; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_raid_class.c_raid_class_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_raid_class.c_raid_class_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.raid_template = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32**, i32, i32* }
%struct.raid_function_template = type { i32 }
%struct.raid_internal = type { %struct.raid_template, i32**, %struct.raid_function_template* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@raid_class = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@raid_match = common dso_local global i32 0, align 4
@dev_attr_level = common dso_local global i32 0, align 4
@dev_attr_resync = common dso_local global i32 0, align 4
@dev_attr_state = common dso_local global i32 0, align 4
@RAID_NUM_ATTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.raid_template* @raid_class_attach(%struct.raid_function_template* %0) #0 {
  %2 = alloca %struct.raid_template*, align 8
  %3 = alloca %struct.raid_function_template*, align 8
  %4 = alloca %struct.raid_internal*, align 8
  %5 = alloca i32, align 4
  store %struct.raid_function_template* %0, %struct.raid_function_template** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.raid_internal* @kzalloc(i32 40, i32 %6)
  store %struct.raid_internal* %7, %struct.raid_internal** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %9 = icmp ne %struct.raid_internal* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.raid_template* null, %struct.raid_template** %2, align 8
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.raid_function_template*, %struct.raid_function_template** %3, align 8
  %17 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %18 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %17, i32 0, i32 2
  store %struct.raid_function_template* %16, %struct.raid_function_template** %18, align 8
  %19 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %20 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.raid_template, %struct.raid_template* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @raid_class, i32 0, i32 0), i32** %23, align 8
  %24 = load i32, i32* @raid_match, align 4
  %25 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %26 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.raid_template, %struct.raid_template* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %24, i32* %29, align 8
  %30 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %31 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %35 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.raid_template, %struct.raid_template* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32** %33, i32*** %38, align 8
  %39 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %40 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.raid_template, %struct.raid_template* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @attribute_container_register(%struct.TYPE_6__* %42)
  %44 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %45 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  store i32* @dev_attr_level, i32** %50, align 8
  %51 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %52 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  store i32* @dev_attr_resync, i32** %57, align 8
  %58 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %59 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  store i32* @dev_attr_state, i32** %64, align 8
  %65 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %66 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @RAID_NUM_ATTRS, align 4
  %73 = icmp sgt i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.raid_internal*, %struct.raid_internal** %4, align 8
  %77 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %76, i32 0, i32 0
  store %struct.raid_template* %77, %struct.raid_template** %2, align 8
  br label %78

78:                                               ; preds = %15, %14
  %79 = load %struct.raid_template*, %struct.raid_template** %2, align 8
  ret %struct.raid_template* %79
}

declare dso_local %struct.raid_internal* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @attribute_container_register(%struct.TYPE_6__*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
