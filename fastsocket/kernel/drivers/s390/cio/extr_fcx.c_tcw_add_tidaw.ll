; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_fcx.c_tcw_add_tidaw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_fcx.c_tcw_add_tidaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tidaw = type { i64, i32, i32 }
%struct.tcw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tidaw* @tcw_add_tidaw(%struct.tcw* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.tcw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tidaw*, align 8
  store %struct.tcw* %0, %struct.tcw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.tcw*, %struct.tcw** %6, align 8
  %13 = call i64 @tcw_get_data(%struct.tcw* %12)
  %14 = inttoptr i64 %13 to %struct.tidaw*
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tidaw, %struct.tidaw* %14, i64 %16
  store %struct.tidaw* %17, %struct.tidaw** %11, align 8
  %18 = load %struct.tidaw*, %struct.tidaw** %11, align 8
  %19 = call i32 @memset(%struct.tidaw* %18, i32 0, i32 16)
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.tidaw*, %struct.tidaw** %11, align 8
  %22 = getelementptr inbounds %struct.tidaw, %struct.tidaw* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.tidaw*, %struct.tidaw** %11, align 8
  %25 = getelementptr inbounds %struct.tidaw, %struct.tidaw* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.tidaw*, %struct.tidaw** %11, align 8
  %29 = getelementptr inbounds %struct.tidaw, %struct.tidaw* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.tidaw*, %struct.tidaw** %11, align 8
  ret %struct.tidaw* %30
}

declare dso_local i64 @tcw_get_data(%struct.tcw*) #1

declare dso_local i32 @memset(%struct.tidaw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
