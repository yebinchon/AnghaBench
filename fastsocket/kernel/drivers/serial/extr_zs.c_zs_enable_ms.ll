; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_enable_ms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { i32*, %struct.zs_scc* }
%struct.zs_scc = type { i32, %struct.zs_port* }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@RES_EXT_INT = common dso_local global i32 0, align 4
@DCDIE = common dso_local global i32 0, align 4
@SYNCIE = common dso_local global i32 0, align 4
@CTSIE = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @zs_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca %struct.zs_scc*, align 8
  %5 = alloca %struct.zs_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.zs_port* @to_zport(%struct.uart_port* %6)
  store %struct.zs_port* %7, %struct.zs_port** %3, align 8
  %8 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %9 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %8, i32 0, i32 1
  %10 = load %struct.zs_scc*, %struct.zs_scc** %9, align 8
  store %struct.zs_scc* %10, %struct.zs_scc** %4, align 8
  %11 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %12 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %11, i32 0, i32 1
  %13 = load %struct.zs_port*, %struct.zs_port** %12, align 8
  %14 = load i64, i64* @ZS_CHAN_A, align 8
  %15 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %13, i64 %14
  store %struct.zs_port* %15, %struct.zs_port** %5, align 8
  %16 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %17 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %18 = icmp eq %struct.zs_port* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %92

20:                                               ; preds = %1
  %21 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %22 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %25 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EXT_INT_ENAB, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %34 = load i32, i32* @R0, align 4
  %35 = load i32, i32* @RES_EXT_INT, align 4
  %36 = call i32 @write_zsreg(%struct.zs_port* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load i32, i32* @EXT_INT_ENAB, align 4
  %39 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %40 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @DCDIE, align 4
  %46 = load i32, i32* @SYNCIE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %49 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 15
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @DCDIE, align 4
  %55 = load i32, i32* @CTSIE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %58 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 15
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 4
  %63 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %64 = call i32 @zs_raw_xor_mctrl(%struct.zs_port* %63)
  %65 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %66 = load i32, i32* @R1, align 4
  %67 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %68 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @write_zsreg(%struct.zs_port* %65, i32 %66, i32 %71)
  %73 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %74 = load i32, i32* @R15, align 4
  %75 = load %struct.zs_port*, %struct.zs_port** %5, align 8
  %76 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 15
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @write_zsreg(%struct.zs_port* %73, i32 %74, i32 %79)
  %81 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %82 = load i32, i32* @R15, align 4
  %83 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %84 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 15
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @write_zsreg(%struct.zs_port* %81, i32 %82, i32 %87)
  %89 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %90 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  br label %92

92:                                               ; preds = %37, %19
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

declare dso_local i32 @zs_raw_xor_mctrl(%struct.zs_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
