; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_path_mark_eeh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_path_mark_eeh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_prev_path_list = type { i32 }

@bnx2x_prev_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Received %d when tried to take lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"path %d: Entry does not exist for eeh; Flow occurs before initial insmod is over ?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_prev_path_mark_eeh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_path_mark_eeh(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_prev_path_list*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %6 = call i32 @down_interruptible(i32* @bnx2x_prev_sem)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = call %struct.bnx2x_prev_path_list* @bnx2x_prev_path_get_entry(%struct.bnx2x* %14)
  store %struct.bnx2x_prev_path_list* %15, %struct.bnx2x_prev_path_list** %4, align 8
  %16 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %4, align 8
  %17 = icmp ne %struct.bnx2x_prev_path_list* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.bnx2x_prev_path_list*, %struct.bnx2x_prev_path_list** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x_prev_path_list, %struct.bnx2x_prev_path_list* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  store i32 0, i32* %5, align 4
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = call i32 @BP_PATH(%struct.bnx2x* %22)
  %24 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = call i32 @up(i32* @bnx2x_prev_sem)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local %struct.bnx2x_prev_path_list* @bnx2x_prev_path_get_entry(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
