; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device.c_edac_device_handle_ce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_device.c_edac_device_handle_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, i32, %struct.TYPE_6__, %struct.edac_device_instance* }
%struct.TYPE_6__ = type { i32 }
%struct.edac_device_instance = type { i32, i32, %struct.TYPE_5__, %struct.edac_device_block* }
%struct.TYPE_5__ = type { i32 }
%struct.edac_device_block = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"INTERNAL ERROR: 'instance' out of range (%d >= %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"INTERNAL ERROR: instance %d 'block' out of range (%d >= %d)\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CE: %s instance: %s block: %s '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edac_device_handle_ce(%struct.edac_device_ctl_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.edac_device_instance*, align 8
  %10 = alloca %struct.edac_device_block*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.edac_device_block* null, %struct.edac_device_block** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %13 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16, %4
  %20 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %24 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.edac_device_ctl_info*, i32, i8*, i32, i32, ...) @edac_device_printk(%struct.edac_device_ctl_info* %20, i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %102

27:                                               ; preds = %16
  %28 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %29 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %28, i32 0, i32 3
  %30 = load %struct.edac_device_instance*, %struct.edac_device_instance** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %30, i64 %32
  store %struct.edac_device_instance* %33, %struct.edac_device_instance** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %36 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39, %27
  %43 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %48 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.edac_device_ctl_info*, i32, i8*, i32, i32, ...) @edac_device_printk(%struct.edac_device_ctl_info* %43, i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %49)
  br label %102

51:                                               ; preds = %39
  %52 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %53 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %58 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %57, i32 0, i32 3
  %59 = load %struct.edac_device_block*, %struct.edac_device_block** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %59, i64 %61
  store %struct.edac_device_block* %62, %struct.edac_device_block** %10, align 8
  %63 = load %struct.edac_device_block*, %struct.edac_device_block** %10, align 8
  %64 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %56, %51
  %69 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %70 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %75 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %80 = call i64 @edac_device_get_log_ce(%struct.edac_device_ctl_info* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %68
  %83 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %84 = load i32, i32* @KERN_WARNING, align 4
  %85 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %86 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.edac_device_instance*, %struct.edac_device_instance** %9, align 8
  %89 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.edac_device_block*, %struct.edac_device_block** %10, align 8
  %92 = icmp ne %struct.edac_device_block* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load %struct.edac_device_block*, %struct.edac_device_block** %10, align 8
  %95 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  br label %98

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i8* [ %96, %93 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %97 ]
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 (%struct.edac_device_ctl_info*, i32, i8*, i32, i32, ...) @edac_device_printk(%struct.edac_device_ctl_info* %83, i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %90, i8* %99, i8* %100)
  br label %102

102:                                              ; preds = %19, %42, %98, %68
  ret void
}

declare dso_local i32 @edac_device_printk(%struct.edac_device_ctl_info*, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @edac_device_get_log_ce(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
