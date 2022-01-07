; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_fcx.c_tcw_get_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_fcx.c_tcw_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcw = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tcw_get_data(%struct.tcw* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tcw*, align 8
  store %struct.tcw* %0, %struct.tcw** %3, align 8
  %4 = load %struct.tcw*, %struct.tcw** %3, align 8
  %5 = getelementptr inbounds %struct.tcw, %struct.tcw* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.tcw*, %struct.tcw** %3, align 8
  %10 = getelementptr inbounds %struct.tcw, %struct.tcw* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.tcw*, %struct.tcw** %3, align 8
  %15 = getelementptr inbounds %struct.tcw, %struct.tcw* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.tcw*, %struct.tcw** %3, align 8
  %20 = getelementptr inbounds %struct.tcw, %struct.tcw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %2, align 8
  br label %24

23:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %24

24:                                               ; preds = %23, %18, %8
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
