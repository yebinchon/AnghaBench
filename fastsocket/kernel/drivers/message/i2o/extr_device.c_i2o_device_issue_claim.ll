; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_issue_claim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_issue_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2o_message = type { i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }

@I2O_TIMEOUT_MESSAGE_GET = common dso_local global i32 0, align 4
@FIVE_WORD_MSG_SIZE = common dso_local global i32 0, align 4
@SGL_OFFSET_0 = common dso_local global i32 0, align 4
@HOST_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_device*, i32, i32)* @i2o_device_issue_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_device_issue_claim(%struct.i2o_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2o_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2o_message*, align 8
  store %struct.i2o_device* %0, %struct.i2o_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i2o_device*, %struct.i2o_device** %5, align 8
  %10 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2O_TIMEOUT_MESSAGE_GET, align 4
  %13 = call %struct.i2o_message* @i2o_msg_get_wait(i32 %11, i32 %12)
  store %struct.i2o_message* %13, %struct.i2o_message** %8, align 8
  %14 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %15 = call i64 @IS_ERR(%struct.i2o_message* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.i2o_message* %18)
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %3
  %21 = load i32, i32* @FIVE_WORD_MSG_SIZE, align 4
  %22 = load i32, i32* @SGL_OFFSET_0, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %26 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %24, i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 24
  %32 = load i32, i32* @HOST_TID, align 4
  %33 = shl i32 %32, 12
  %34 = or i32 %31, %33
  %35 = load %struct.i2o_device*, %struct.i2o_device** %5, align 8
  %36 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %34, %38
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %42 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %40, i8** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %49 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %47, i8** %51, align 8
  %52 = load %struct.i2o_device*, %struct.i2o_device** %5, align 8
  %53 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i2o_message*, %struct.i2o_message** %8, align 8
  %56 = call i32 @i2o_msg_post_wait(i32 %54, %struct.i2o_message* %55, i32 60)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %20, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.i2o_message* @i2o_msg_get_wait(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2o_message*) #1

declare dso_local i32 @PTR_ERR(%struct.i2o_message*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @i2o_msg_post_wait(i32, %struct.i2o_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
