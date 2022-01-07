; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_send_abort_both_ways.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_send_abort_both_ways.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.CommandList = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [58 x i8] c"Unexpectedly found byte-swapped tag in completion queue.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, %struct.CommandList*)* @hpsa_send_abort_both_ways to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_send_abort_both_ways(%struct.ctlr_info* %0, i8* %1, %struct.CommandList* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca %struct.CommandList*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.CommandList* %2, %struct.CommandList** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %13 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %14 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = call i32 @memcpy(i32* %12, i32* %17, i32 8)
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %20 = call i32 @swizzle_abort_tag(i32* %19)
  %21 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %23 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %24 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %23, i32 0, i32 0
  %25 = call %struct.CommandList* @hpsa_find_cmd_in_queue_by_tag(%struct.ctlr_info* %21, i32* %22, i32* %24)
  store %struct.CommandList* %25, %struct.CommandList** %9, align 8
  %26 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %27 = icmp ne %struct.CommandList* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %30 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %37 = call i32 @hpsa_send_abort(%struct.ctlr_info* %34, i8* %35, %struct.CommandList* %36, i32 0)
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %3
  %39 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %42 = call i32 @hpsa_send_abort(%struct.ctlr_info* %39, i8* %40, %struct.CommandList* %41, i32 0)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %44 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %45 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %48 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %47, i32 0, i32 0
  %49 = call %struct.CommandList* @hpsa_find_cmd_in_queue(%struct.ctlr_info* %43, i32 %46, i32* %48)
  store %struct.CommandList* %49, %struct.CommandList** %9, align 8
  %50 = load %struct.CommandList*, %struct.CommandList** %9, align 8
  %51 = icmp ne %struct.CommandList* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %56 = call i32 @hpsa_send_abort(%struct.ctlr_info* %53, i8* %54, %struct.CommandList* %55, i32 1)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %28
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @swizzle_abort_tag(i32*) #1

declare dso_local %struct.CommandList* @hpsa_find_cmd_in_queue_by_tag(%struct.ctlr_info*, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hpsa_send_abort(%struct.ctlr_info*, i8*, %struct.CommandList*, i32) #1

declare dso_local %struct.CommandList* @hpsa_find_cmd_in_queue(%struct.ctlr_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
