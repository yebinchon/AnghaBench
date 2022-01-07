; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.hid_device*, i64, i32, i32, i32 }
%struct.hid_device = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.hiddev_list* }
%struct.hiddev_list = type { %struct.TYPE_2__*, i32, i32 }

@HIDDEV_MINOR_BASE = common dso_local global i32 0, align 4
@HIDDEV_MINORS = common dso_local global i32 0, align 4
@hiddev_table = common dso_local global %struct.TYPE_2__** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hiddev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiddev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hiddev_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = load i32, i32* @HIDDEV_MINOR_BASE, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @HIDDEV_MINORS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hiddev_table, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20, %17, %2
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %144

30:                                               ; preds = %20
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.hiddev_list* @kzalloc(i32 16, i32 %31)
  store %struct.hiddev_list* %32, %struct.hiddev_list** %6, align 8
  %33 = icmp ne %struct.hiddev_list* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %144

37:                                               ; preds = %30
  %38 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %39 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %38, i32 0, i32 2
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hiddev_table, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %47 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %46, i32 0, i32 0
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  store %struct.hiddev_list* %48, %struct.hiddev_list** %50, align 8
  %51 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %52 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %37
  %58 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %59 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hiddev_table, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.hid_device*, %struct.hid_device** %71, align 8
  %73 = call i32 @usbhid_open(%struct.hid_device* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %138

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %57
  br label %84

81:                                               ; preds = %37
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %138

84:                                               ; preds = %80
  %85 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %86 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = call i32 @spin_lock_irq(i32* %88)
  %90 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %91 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hiddev_table, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %92, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = call i32 @list_add_tail(i32* %91, i32* %97)
  %99 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %100 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = call i32 @spin_unlock_irq(i32* %102)
  %104 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %105 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %137, label %111

111:                                              ; preds = %84
  %112 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %113 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %111
  %119 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hiddev_table, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %119, i64 %121
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load %struct.hid_device*, %struct.hid_device** %124, align 8
  store %struct.hid_device* %125, %struct.hid_device** %9, align 8
  %126 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %127 = call i32 @usbhid_get_power(%struct.hid_device* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32, i32* @EIO, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %7, align 4
  br label %138

133:                                              ; preds = %118
  %134 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %135 = call i32 @usbhid_open(%struct.hid_device* %134)
  br label %136

136:                                              ; preds = %133, %111
  br label %137

137:                                              ; preds = %136, %84
  store i32 0, i32* %3, align 4
  br label %144

138:                                              ; preds = %130, %81, %76
  %139 = load %struct.file*, %struct.file** %5, align 8
  %140 = getelementptr inbounds %struct.file, %struct.file* %139, i32 0, i32 0
  store %struct.hiddev_list* null, %struct.hiddev_list** %140, align 8
  %141 = load %struct.hiddev_list*, %struct.hiddev_list** %6, align 8
  %142 = call i32 @kfree(%struct.hiddev_list* %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %137, %34, %27
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.hiddev_list* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usbhid_open(%struct.hid_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usbhid_get_power(%struct.hid_device*) #1

declare dso_local i32 @kfree(%struct.hiddev_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
