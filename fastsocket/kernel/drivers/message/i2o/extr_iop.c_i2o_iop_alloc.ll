; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_iop.c_i2o_iop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i32, i8*, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@i2o_iop_alloc.unit = internal global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"i2o: Insufficient memory to allocate a I2O controller.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"iop%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"i2o_%s_msg_inpool\00", align 1
@I2O_INBOUND_MSG_FRAME_SIZE = common dso_local global i32 0, align 4
@I2O_MSG_INPOOL_MIN = common dso_local global i32 0, align 4
@i2o_iop_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2o_controller* @i2o_iop_alloc() #0 {
  %1 = alloca %struct.i2o_controller*, align 8
  %2 = alloca %struct.i2o_controller*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.i2o_controller* @kzalloc(i32 56, i32 %4)
  store %struct.i2o_controller* %5, %struct.i2o_controller** %2, align 8
  %6 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %7 = icmp ne %struct.i2o_controller* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = call i32 @osm_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.i2o_controller* @ERR_PTR(i32 %11)
  store %struct.i2o_controller* %12, %struct.i2o_controller** %1, align 8
  br label %70

13:                                               ; preds = %0
  %14 = load i32, i32* @i2o_iop_alloc.unit, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @i2o_iop_alloc.unit, align 4
  %16 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %17 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %19 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %22 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %26 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %27 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @snprintf(i8* %25, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %31 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %30, i32 0, i32 9
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* @I2O_INBOUND_MSG_FRAME_SIZE, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @I2O_MSG_INPOOL_MIN, align 4
  %39 = call i64 @i2o_pool_alloc(i32* %31, i8* %32, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %13
  %42 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %43 = call i32 @kfree(%struct.i2o_controller* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.i2o_controller* @ERR_PTR(i32 %45)
  store %struct.i2o_controller* %46, %struct.i2o_controller** %1, align 8
  br label %70

47:                                               ; preds = %13
  %48 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %49 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %48, i32 0, i32 8
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %52 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %51, i32 0, i32 7
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %55 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %54, i32 0, i32 6
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %58 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %57, i32 0, i32 5
  %59 = call i32 @device_initialize(%struct.TYPE_3__* %58)
  %60 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %61 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32* @i2o_iop_release, i32** %62, align 8
  %63 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %64 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %63, i32 0, i32 5
  %65 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %66 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_set_name(%struct.TYPE_3__* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  store %struct.i2o_controller* %69, %struct.i2o_controller** %1, align 8
  br label %70

70:                                               ; preds = %47, %41, %8
  %71 = load %struct.i2o_controller*, %struct.i2o_controller** %1, align 8
  ret %struct.i2o_controller* %71
}

declare dso_local %struct.i2o_controller* @kzalloc(i32, i32) #1

declare dso_local i32 @osm_err(i8*) #1

declare dso_local %struct.i2o_controller* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @i2o_pool_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.i2o_controller*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
