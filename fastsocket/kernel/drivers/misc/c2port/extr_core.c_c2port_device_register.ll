; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c_c2port_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c_c2port_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.c2port_device = type { i32, i32, i64, i64, i32, %struct.c2port_ops*, i32 }
%struct.c2port_ops = type { i32, i32, i32 (%struct.c2port_device.0*, i32)*, i32, i32, i32, i32 }
%struct.c2port_device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@c2port_idr = common dso_local global i32 0, align 4
@c2port_idr_lock = common dso_local global i32 0, align 4
@c2port_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"c2port%d\00", align 1
@C2PORT_NAME_LEN = common dso_local global i32 0, align 4
@c2port_bin_attrs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"C2 port %s added\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"%s flash has %d blocks x %d bytes (%d bytes total)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.c2port_device* @c2port_device_register(i8* %0, %struct.c2port_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.c2port_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.c2port_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.c2port_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.c2port_ops* %1, %struct.c2port_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %12 = icmp ne %struct.c2port_ops* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %3
  %18 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %19 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %18, i32 0, i32 2
  %20 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.c2port_device.0*, i32)* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %17
  %27 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %28 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %26
  %36 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %37 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %35
  %45 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %46 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %44
  %54 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %55 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53, %44, %35, %26, %17, %3
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.c2port_device* @ERR_PTR(i32 %64)
  store %struct.c2port_device* %65, %struct.c2port_device** %4, align 8
  br label %200

66:                                               ; preds = %53
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.c2port_device* @kmalloc(i32 48, i32 %67)
  store %struct.c2port_device* %68, %struct.c2port_device** %8, align 8
  %69 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %70 = load i32, i32* @flags, align 4
  %71 = call i32 @kmemcheck_annotate_bitfield(%struct.c2port_device* %69, i32 %70)
  %72 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %73 = icmp ne %struct.c2port_device* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.c2port_device* @ERR_PTR(i32 %80)
  store %struct.c2port_device* %81, %struct.c2port_device** %4, align 8
  br label %200

82:                                               ; preds = %66
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32 @idr_pre_get(i32* @c2port_idr, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %195

90:                                               ; preds = %82
  %91 = call i32 @spin_lock_irq(i32* @c2port_idr_lock)
  %92 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %93 = call i32 @idr_get_new(i32* @c2port_idr, %struct.c2port_device* %92, i32* %9)
  store i32 %93, i32* %10, align 4
  %94 = call i32 @spin_unlock_irq(i32* @c2port_idr_lock)
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %195

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %101 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @c2port_class, align 4
  %103 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @device_create(i32 %102, i32* null, i32 0, %struct.c2port_device* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %107 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %109 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %190

119:                                              ; preds = %98
  %120 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %121 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %124 = call i32 @dev_set_drvdata(i32 %122, %struct.c2port_device* %123)
  %125 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %126 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* @C2PORT_NAME_LEN, align 4
  %130 = call i32 @strncpy(i32 %127, i8* %128, i32 %129)
  %131 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %132 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %133 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %132, i32 0, i32 5
  store %struct.c2port_ops* %131, %struct.c2port_ops** %133, align 8
  %134 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %135 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %134, i32 0, i32 4
  %136 = call i32 @mutex_init(i32* %135)
  %137 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %138 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %141 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @c2port_bin_attrs, i32 0, i32 0), align 4
  %144 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %145 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @device_create_bin_file(i32 %146, %struct.TYPE_3__* @c2port_bin_attrs)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %119
  br label %187

152:                                              ; preds = %119
  %153 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %154 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %156 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %158 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %157, i32 0, i32 2
  %159 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %158, align 8
  %160 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %161 = bitcast %struct.c2port_device* %160 to %struct.c2port_device.0*
  %162 = call i32 %159(%struct.c2port_device.0* %161, i32 0)
  %163 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %164 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %166)
  %168 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %169 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %5, align 8
  %172 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %173 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %176 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %179 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %182 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  %185 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %170, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %171, i32 %174, i32 %177, i32 %184)
  %186 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  store %struct.c2port_device* %186, %struct.c2port_device** %4, align 8
  br label %200

187:                                              ; preds = %151
  %188 = load i32, i32* @c2port_class, align 4
  %189 = call i32 @device_destroy(i32 %188, i32 0)
  br label %190

190:                                              ; preds = %187, %116
  %191 = call i32 @spin_lock_irq(i32* @c2port_idr_lock)
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @idr_remove(i32* @c2port_idr, i32 %192)
  %194 = call i32 @spin_unlock_irq(i32* @c2port_idr_lock)
  br label %195

195:                                              ; preds = %190, %97, %87
  %196 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %197 = call i32 @kfree(%struct.c2port_device* %196)
  %198 = load i32, i32* %10, align 4
  %199 = call %struct.c2port_device* @ERR_PTR(i32 %198)
  store %struct.c2port_device* %199, %struct.c2port_device** %4, align 8
  br label %200

200:                                              ; preds = %195, %152, %78, %62
  %201 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  ret %struct.c2port_device* %201
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.c2port_device* @ERR_PTR(i32) #1

declare dso_local %struct.c2port_device* @kmalloc(i32, i32) #1

declare dso_local i32 @kmemcheck_annotate_bitfield(%struct.c2port_device*, i32) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.c2port_device*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @device_create(i32, i32*, i32, %struct.c2port_device*, i8*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.c2port_device*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_create_bin_file(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, ...) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.c2port_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
