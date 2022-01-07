; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_load_zsregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_load_zsregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { i32 }

@R3 = common dso_local global i32 0, align 4
@RxENABLE = common dso_local global i32 0, align 4
@R5 = common dso_local global i32 0, align 4
@TxENAB = common dso_local global i32 0, align 4
@R4 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@R2 = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@BRENABL = common dso_local global i32 0, align 4
@R11 = common dso_local global i32 0, align 4
@R12 = common dso_local global i32 0, align 4
@R13 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zs_port*, i32*, i32)* @load_zsregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_zsregs(%struct.zs_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.zs_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.zs_port* %0, %struct.zs_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @zs_line_drain(%struct.zs_port* %7, i32 %8)
  %10 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %11 = load i32, i32* @R3, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RxENABLE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @write_zsreg(%struct.zs_port* %10, i32 %11, i32 %17)
  %19 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %20 = load i32, i32* @R5, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TxENAB, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @write_zsreg(%struct.zs_port* %19, i32 %20, i32 %26)
  %28 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %29 = load i32, i32* @R4, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @write_zsreg(%struct.zs_port* %28, i32 %29, i32 %32)
  %34 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %35 = load i32, i32* @R9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 9
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_zsreg(%struct.zs_port* %34, i32 %35, i32 %38)
  %40 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %41 = load i32, i32* @R1, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @write_zsreg(%struct.zs_port* %40, i32 %41, i32 %44)
  %46 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %47 = load i32, i32* @R2, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write_zsreg(%struct.zs_port* %46, i32 %47, i32 %50)
  %52 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %53 = load i32, i32* @R10, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 10
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @write_zsreg(%struct.zs_port* %52, i32 %53, i32 %56)
  %58 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %59 = load i32, i32* @R14, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 14
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BRENABL, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = call i32 @write_zsreg(%struct.zs_port* %58, i32 %59, i32 %65)
  %67 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %68 = load i32, i32* @R11, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @write_zsreg(%struct.zs_port* %67, i32 %68, i32 %71)
  %73 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %74 = load i32, i32* @R12, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 12
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write_zsreg(%struct.zs_port* %73, i32 %74, i32 %77)
  %79 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %80 = load i32, i32* @R13, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 13
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @write_zsreg(%struct.zs_port* %79, i32 %80, i32 %83)
  %85 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %86 = load i32, i32* @R14, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 14
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @write_zsreg(%struct.zs_port* %85, i32 %86, i32 %89)
  %91 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %92 = load i32, i32* @R15, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 15
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @write_zsreg(%struct.zs_port* %91, i32 %92, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RxENABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %3
  %104 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %105 = load i32, i32* @R3, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @write_zsreg(%struct.zs_port* %104, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %103, %3
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TxENAB, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %119 = load i32, i32* @R5, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @write_zsreg(%struct.zs_port* %118, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %117, %110
  ret void
}

declare dso_local i32 @zs_line_drain(%struct.zs_port*, i32) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
