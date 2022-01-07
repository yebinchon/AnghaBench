; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_populate_lancer_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_populate_lancer_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.be_drv_stats }
%struct.be_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lancer_pport_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @populate_lancer_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_lancer_stats(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_drv_stats*, align 8
  %4 = alloca %struct.lancer_pport_stats*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %5, i32 0, i32 0
  store %struct.be_drv_stats* %6, %struct.be_drv_stats** %3, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = call %struct.lancer_pport_stats* @pport_stats_from_cmd(%struct.be_adapter* %7)
  store %struct.lancer_pport_stats* %8, %struct.lancer_pport_stats** %4, align 8
  %9 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %10 = call i32 @be_dws_le_to_cpu(%struct.lancer_pport_stats* %9, i32 104)
  %11 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %12 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %11, i32 0, i32 23
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %15 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %14, i32 0, i32 23
  store i32 %13, i32* %15, align 8
  %16 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %17 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %16, i32 0, i32 22
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %20 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %19, i32 0, i32 22
  store i32 %18, i32* %20, align 4
  %21 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %22 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %21, i32 0, i32 21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %25 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %24, i32 0, i32 21
  store i32 %23, i32* %25, align 8
  %26 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %27 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %26, i32 0, i32 20
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %30 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 4
  %31 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %32 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %31, i32 0, i32 19
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %35 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %34, i32 0, i32 19
  store i32 %33, i32* %35, align 8
  %36 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %37 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %36, i32 0, i32 18
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %40 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %39, i32 0, i32 18
  store i32 %38, i32* %40, align 4
  %41 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %42 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %41, i32 0, i32 17
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %45 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %44, i32 0, i32 17
  store i32 %43, i32* %45, align 8
  %46 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %47 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %46, i32 0, i32 16
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %50 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %49, i32 0, i32 16
  store i32 %48, i32* %50, align 4
  %51 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %52 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %55 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 8
  %56 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %57 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %60 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %59, i32 0, i32 14
  store i32 %58, i32* %60, align 4
  %61 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %62 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %65 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 8
  %66 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %67 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %70 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 4
  %71 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %72 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %75 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 8
  %76 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %77 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %80 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 4
  %81 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %82 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %85 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 8
  %86 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %87 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %90 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %94 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %93, i32 0, i32 8
  store i64 %92, i64* %94, align 8
  %95 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %96 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %99 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %101 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %104 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %106 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %109 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %111 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %114 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %116 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %119 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %121 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %124 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %126 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %129 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.lancer_pport_stats*, %struct.lancer_pport_stats** %4, align 8
  %131 = getelementptr inbounds %struct.lancer_pport_stats, %struct.lancer_pport_stats* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.be_drv_stats*, %struct.be_drv_stats** %3, align 8
  %134 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  ret void
}

declare dso_local %struct.lancer_pport_stats* @pport_stats_from_cmd(%struct.be_adapter*) #1

declare dso_local i32 @be_dws_le_to_cpu(%struct.lancer_pport_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
