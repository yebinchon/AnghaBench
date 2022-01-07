; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_init_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IEVENT_INIT_CLEAR = common dso_local global i32 0, align 4
@IMASK_INIT_CLEAR = common dso_local global i32 0, align 4
@FSL_GIANFAR_DEV_HAS_RMON = common dso_local global i32 0, align 4
@MINFLR_INIT_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_registers(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %4)
  store %struct.gfar_private* %5, %struct.gfar_private** %3, align 8
  %6 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %7 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 20
  %10 = load i32, i32* @IEVENT_INIT_CLEAR, align 4
  %11 = call i32 @gfar_write(i32* %9, i32 %10)
  %12 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %13 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 19
  %16 = load i32, i32* @IMASK_INIT_CLEAR, align 4
  %17 = call i32 @gfar_write(i32* %15, i32 %16)
  %18 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %19 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 18
  %22 = call i32 @gfar_write(i32* %21, i32 0)
  %23 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %24 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 17
  %27 = call i32 @gfar_write(i32* %26, i32 0)
  %28 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 16
  %32 = call i32 @gfar_write(i32* %31, i32 0)
  %33 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %34 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 15
  %37 = call i32 @gfar_write(i32* %36, i32 0)
  %38 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %39 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 14
  %42 = call i32 @gfar_write(i32* %41, i32 0)
  %43 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %44 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 13
  %47 = call i32 @gfar_write(i32* %46, i32 0)
  %48 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %49 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 12
  %52 = call i32 @gfar_write(i32* %51, i32 0)
  %53 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %54 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 11
  %57 = call i32 @gfar_write(i32* %56, i32 0)
  %58 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %59 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 10
  %62 = call i32 @gfar_write(i32* %61, i32 0)
  %63 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %64 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 9
  %67 = call i32 @gfar_write(i32* %66, i32 0)
  %68 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %69 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 8
  %72 = call i32 @gfar_write(i32* %71, i32 0)
  %73 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %74 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 7
  %77 = call i32 @gfar_write(i32* %76, i32 0)
  %78 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %79 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  %82 = call i32 @gfar_write(i32* %81, i32 0)
  %83 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %84 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = call i32 @gfar_write(i32* %86, i32 0)
  %88 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %89 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = call i32 @gfar_write(i32* %91, i32 0)
  %93 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %94 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = call i32 @gfar_write(i32* %96, i32 0)
  %98 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %99 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FSL_GIANFAR_DEV_HAS_RMON, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %1
  %105 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %106 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = call i32 @memset_io(%struct.TYPE_4__* %108, i32 0, i32 4)
  %110 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %111 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = call i32 @gfar_write(i32* %114, i32 -1)
  %116 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %117 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i32 @gfar_write(i32* %120, i32 -1)
  br label %122

122:                                              ; preds = %104, %1
  %123 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %124 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %128 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gfar_write(i32* %126, i32 %129)
  %131 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %132 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %131, i32 0, i32 2
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* @MINFLR_INIT_SETTINGS, align 4
  %136 = call i32 @gfar_write(i32* %134, i32 %135)
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

declare dso_local i32 @memset_io(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
