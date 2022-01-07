; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c___lbs_cmd_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c___lbs_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ctrl_node = type { i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, i8*, i8* }
%struct.lbs_private = type { i32, i32, i64 }
%struct.cmd_header = type { i32 }

@LBS_DEB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PREP_CMD: card removed\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"PREP_CMD: cmdnode is NULL\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"PREP_CMD: command 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ret %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_ctrl_node* (%struct.lbs_private*, i32, %struct.cmd_header*, i32, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i64)* @__lbs_cmd_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_ctrl_node* @__lbs_cmd_async(%struct.lbs_private* %0, i32 %1, %struct.cmd_header* %2, i32 %3, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i64 %5) #0 {
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.cmd_header* %2, %struct.cmd_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %4, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32, i32* @LBS_DEB_HOST, align 4
  %15 = call i32 @lbs_deb_enter(i32 %14)
  %16 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.cmd_ctrl_node* @ERR_PTR(i32 %23)
  store %struct.cmd_ctrl_node* %24, %struct.cmd_ctrl_node** %13, align 8
  br label %89

25:                                               ; preds = %6
  %26 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %27 = call %struct.cmd_ctrl_node* @lbs_get_cmd_ctrl_node(%struct.lbs_private* %26)
  store %struct.cmd_ctrl_node* %27, %struct.cmd_ctrl_node** %13, align 8
  %28 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %29 = icmp eq %struct.cmd_ctrl_node* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %33 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %32, i32 0, i32 1
  %34 = call i32 @wake_up_interruptible(i32* %33)
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.cmd_ctrl_node* @ERR_PTR(i32 %36)
  store %struct.cmd_ctrl_node* %37, %struct.cmd_ctrl_node** %13, align 8
  br label %89

38:                                               ; preds = %25
  %39 = load i32 (%struct.lbs_private*, i64, %struct.cmd_header*)*, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %11, align 8
  %40 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %41 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %40, i32 0, i32 0
  store i32 (%struct.lbs_private*, i64, %struct.cmd_header*)* %39, i32 (%struct.lbs_private*, i64, %struct.cmd_header*)** %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %44 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %46 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.cmd_header*, %struct.cmd_header** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @memcpy(%struct.TYPE_2__* %47, %struct.cmd_header* %48, i32 %49)
  %51 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %58 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i8* %56, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %64 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  %67 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %72 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i8* %70, i8** %74, align 8
  %75 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %76 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i8*, ...) @lbs_deb_host(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %82 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %84 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %85 = call i32 @lbs_queue_cmd(%struct.lbs_private* %83, %struct.cmd_ctrl_node* %84)
  %86 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %87 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %86, i32 0, i32 1
  %88 = call i32 @wake_up_interruptible(i32* %87)
  br label %89

89:                                               ; preds = %38, %30, %20
  %90 = load i32, i32* @LBS_DEB_HOST, align 4
  %91 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  %92 = call i32 @lbs_deb_leave_args(i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_ctrl_node* %91)
  %93 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %13, align 8
  ret %struct.cmd_ctrl_node* %93
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_host(i8*, ...) #1

declare dso_local %struct.cmd_ctrl_node* @ERR_PTR(i32) #1

declare dso_local %struct.cmd_ctrl_node* @lbs_get_cmd_ctrl_node(%struct.lbs_private*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.cmd_header*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_queue_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, %struct.cmd_ctrl_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
