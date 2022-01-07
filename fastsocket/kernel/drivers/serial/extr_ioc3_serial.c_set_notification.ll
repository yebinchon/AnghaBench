; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_set_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_set_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.port_hooks* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.port_hooks = type { i32, i32, i32, i32, i32, i32 }

@N_DATA_READY = common dso_local global i32 0, align 4
@N_OUTPUT_LOWAT = common dso_local global i32 0, align 4
@N_DDCD = common dso_local global i32 0, align 4
@SSCR_RX_RING_DCD = common dso_local global i32 0, align 4
@N_DCTS = common dso_local global i32 0, align 4
@SSCR_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc3_port*, i32, i32)* @set_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_notification(%struct.ioc3_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ioc3_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_hooks*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ioc3_port* %0, %struct.ioc3_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %11 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %10, i32 0, i32 4
  %12 = load %struct.port_hooks*, %struct.port_hooks** %11, align 8
  store %struct.port_hooks* %12, %struct.port_hooks** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @N_DATA_READY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.port_hooks*, %struct.port_hooks** %7, align 8
  %24 = getelementptr inbounds %struct.port_hooks, %struct.port_hooks* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.port_hooks*, %struct.port_hooks** %7, align 8
  %27 = getelementptr inbounds %struct.port_hooks, %struct.port_hooks* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %3
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @N_OUTPUT_LOWAT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.port_hooks*, %struct.port_hooks** %7, align 8
  %39 = getelementptr inbounds %struct.port_hooks, %struct.port_hooks* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @N_DDCD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.port_hooks*, %struct.port_hooks** %7, align 8
  %50 = getelementptr inbounds %struct.port_hooks, %struct.port_hooks* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @SSCR_RX_RING_DCD, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @N_DCTS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.port_hooks*, %struct.port_hooks** %7, align 8
  %64 = getelementptr inbounds %struct.port_hooks, %struct.port_hooks* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @enable_intrs(%struct.ioc3_port* %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %77 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %82 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %101

85:                                               ; preds = %68
  %86 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @disable_intrs(%struct.ioc3_port* %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %92 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %9, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %98 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %85, %71
  %102 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %103 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @N_DATA_READY, align 4
  %106 = load i32, i32* @N_DDCD, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load i32, i32* @SSCR_DMA_EN, align 4
  %112 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %113 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %135

116:                                              ; preds = %101
  %117 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %118 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.port_hooks*, %struct.port_hooks** %7, align 8
  %123 = getelementptr inbounds %struct.port_hooks, %struct.port_hooks* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* @SSCR_DMA_EN, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %131 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %116
  br label %135

135:                                              ; preds = %134, %110
  %136 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %137 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ioc3_port*, %struct.ioc3_port** %4, align 8
  %140 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @writel(i32 %138, i32* %142)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @enable_intrs(%struct.ioc3_port*, i32) #1

declare dso_local i32 @disable_intrs(%struct.ioc3_port*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
