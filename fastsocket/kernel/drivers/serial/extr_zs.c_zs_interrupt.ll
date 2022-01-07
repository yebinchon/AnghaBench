; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_scc = type { i32, %struct.zs_port* }
%struct.zs_port = type { i32 }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@ZS_CHAN_B = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@CHBRxIP = common dso_local global i32 0, align 4
@CHARxIP = common dso_local global i32 0, align 4
@CHBEXT = common dso_local global i32 0, align 4
@CHAEXT = common dso_local global i32 0, align 4
@CHBTxIP = common dso_local global i32 0, align 4
@CHATxIP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zs_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zs_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zs_scc*, align 8
  %6 = alloca %struct.zs_port*, align 8
  %7 = alloca %struct.zs_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.zs_scc*
  store %struct.zs_scc* %12, %struct.zs_scc** %5, align 8
  %13 = load %struct.zs_scc*, %struct.zs_scc** %5, align 8
  %14 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %13, i32 0, i32 1
  %15 = load %struct.zs_port*, %struct.zs_port** %14, align 8
  %16 = load i64, i64* @ZS_CHAN_A, align 8
  %17 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %15, i64 %16
  store %struct.zs_port* %17, %struct.zs_port** %6, align 8
  %18 = load %struct.zs_scc*, %struct.zs_scc** %5, align 8
  %19 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %18, i32 0, i32 1
  %20 = load %struct.zs_port*, %struct.zs_port** %19, align 8
  %21 = load i64, i64* @ZS_CHAN_B, align 8
  %22 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %20, i64 %21
  store %struct.zs_port* %22, %struct.zs_port** %7, align 8
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %8, align 4
  store i32 16, i32* %10, align 4
  br label %24

24:                                               ; preds = %92, %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %95

27:                                               ; preds = %24
  %28 = load %struct.zs_scc*, %struct.zs_scc** %5, align 8
  %29 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.zs_port*, %struct.zs_port** %6, align 8
  %32 = load i32, i32* @R3, align 4
  %33 = call i32 @read_zsreg(%struct.zs_port* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.zs_scc*, %struct.zs_scc** %5, align 8
  %35 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %95

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CHBRxIP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %47 = call i32 @zs_receive_chars(%struct.zs_port* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CHARxIP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.zs_port*, %struct.zs_port** %6, align 8
  %55 = call i32 @zs_receive_chars(%struct.zs_port* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @CHBEXT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %63 = load %struct.zs_port*, %struct.zs_port** %6, align 8
  %64 = call i32 @zs_status_handle(%struct.zs_port* %62, %struct.zs_port* %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @CHAEXT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.zs_port*, %struct.zs_port** %6, align 8
  %72 = load %struct.zs_port*, %struct.zs_port** %6, align 8
  %73 = call i32 @zs_status_handle(%struct.zs_port* %71, %struct.zs_port* %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CHBTxIP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.zs_port*, %struct.zs_port** %7, align 8
  %81 = call i32 @zs_transmit_chars(%struct.zs_port* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @CHATxIP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.zs_port*, %struct.zs_port** %6, align 8
  %89 = call i32 @zs_transmit_chars(%struct.zs_port* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %24

95:                                               ; preds = %39, %24
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_zsreg(%struct.zs_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @zs_receive_chars(%struct.zs_port*) #1

declare dso_local i32 @zs_status_handle(%struct.zs_port*, %struct.zs_port*) #1

declare dso_local i32 @zs_transmit_chars(%struct.zs_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
