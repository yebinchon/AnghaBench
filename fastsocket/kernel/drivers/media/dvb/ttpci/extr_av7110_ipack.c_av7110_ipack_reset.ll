; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ipack.c_av7110_ipack_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ipack.c_av7110_ipack_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av7110_ipack_reset(%struct.ipack* %0) #0 {
  %2 = alloca %struct.ipack*, align 8
  store %struct.ipack* %0, %struct.ipack** %2, align 8
  %3 = load %struct.ipack*, %struct.ipack** %2, align 8
  %4 = getelementptr inbounds %struct.ipack, %struct.ipack* %3, i32 0, i32 10
  store i64 0, i64* %4, align 8
  %5 = load %struct.ipack*, %struct.ipack** %2, align 8
  %6 = getelementptr inbounds %struct.ipack, %struct.ipack* %5, i32 0, i32 9
  store i64 0, i64* %6, align 8
  %7 = load %struct.ipack*, %struct.ipack** %2, align 8
  %8 = getelementptr inbounds %struct.ipack, %struct.ipack* %7, i32 0, i32 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.ipack*, %struct.ipack** %2, align 8
  %10 = getelementptr inbounds %struct.ipack, %struct.ipack* %9, i32 0, i32 7
  store i64 0, i64* %10, align 8
  %11 = load %struct.ipack*, %struct.ipack** %2, align 8
  %12 = getelementptr inbounds %struct.ipack, %struct.ipack* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.ipack*, %struct.ipack** %2, align 8
  %14 = getelementptr inbounds %struct.ipack, %struct.ipack* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.ipack*, %struct.ipack** %2, align 8
  %16 = getelementptr inbounds %struct.ipack, %struct.ipack* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.ipack*, %struct.ipack** %2, align 8
  %18 = getelementptr inbounds %struct.ipack, %struct.ipack* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.ipack*, %struct.ipack** %2, align 8
  %20 = getelementptr inbounds %struct.ipack, %struct.ipack* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.ipack*, %struct.ipack** %2, align 8
  %22 = getelementptr inbounds %struct.ipack, %struct.ipack* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.ipack*, %struct.ipack** %2, align 8
  %24 = getelementptr inbounds %struct.ipack, %struct.ipack* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
