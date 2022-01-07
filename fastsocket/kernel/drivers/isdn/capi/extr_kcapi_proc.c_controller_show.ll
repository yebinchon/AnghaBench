; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi_proc.c_controller_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi_proc.c_controller_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.capi_ctr = type { i8* (%struct.capi_ctr*)*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%d %-10s %-8s %-16s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @controller_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @controller_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.capi_ctr*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.capi_ctr**
  %9 = load %struct.capi_ctr*, %struct.capi_ctr** %8, align 8
  store %struct.capi_ctr* %9, %struct.capi_ctr** %6, align 8
  %10 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %11 = icmp ne %struct.capi_ctr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %16 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %19 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %22 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cardstate2str(i32 %23)
  %25 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %26 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %29 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %28, i32 0, i32 0
  %30 = load i8* (%struct.capi_ctr*)*, i8* (%struct.capi_ctr*)** %29, align 8
  %31 = icmp ne i8* (%struct.capi_ctr*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %13
  %33 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %34 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %33, i32 0, i32 0
  %35 = load i8* (%struct.capi_ctr*)*, i8* (%struct.capi_ctr*)** %34, align 8
  %36 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %37 = call i8* %35(%struct.capi_ctr* %36)
  br label %39

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i8* [ %37, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %38 ]
  %41 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %24, i32 %27, i8* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @cardstate2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
