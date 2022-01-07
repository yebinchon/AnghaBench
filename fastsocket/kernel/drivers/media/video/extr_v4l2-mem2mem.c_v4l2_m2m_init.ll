; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-mem2mem.c_v4l2_m2m_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_dev = type { i32, i32, %struct.v4l2_m2m_ops*, i32* }
%struct.v4l2_m2m_ops = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_m2m_dev* @v4l2_m2m_init(%struct.v4l2_m2m_ops* %0) #0 {
  %2 = alloca %struct.v4l2_m2m_dev*, align 8
  %3 = alloca %struct.v4l2_m2m_ops*, align 8
  %4 = alloca %struct.v4l2_m2m_dev*, align 8
  store %struct.v4l2_m2m_ops* %0, %struct.v4l2_m2m_ops** %3, align 8
  %5 = load %struct.v4l2_m2m_ops*, %struct.v4l2_m2m_ops** %3, align 8
  %6 = icmp ne %struct.v4l2_m2m_ops* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.v4l2_m2m_dev* @ERR_PTR(i32 %9)
  store %struct.v4l2_m2m_dev* %10, %struct.v4l2_m2m_dev** %2, align 8
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.v4l2_m2m_ops*, %struct.v4l2_m2m_ops** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_m2m_ops, %struct.v4l2_m2m_ops* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.v4l2_m2m_ops*, %struct.v4l2_m2m_ops** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_m2m_ops, %struct.v4l2_m2m_ops* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.v4l2_m2m_dev* @kzalloc(i32 24, i32 %26)
  store %struct.v4l2_m2m_dev* %27, %struct.v4l2_m2m_dev** %4, align 8
  %28 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %29 = icmp ne %struct.v4l2_m2m_dev* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %11
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.v4l2_m2m_dev* @ERR_PTR(i32 %32)
  store %struct.v4l2_m2m_dev* %33, %struct.v4l2_m2m_dev** %2, align 8
  br label %47

34:                                               ; preds = %11
  %35 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = load %struct.v4l2_m2m_ops*, %struct.v4l2_m2m_ops** %3, align 8
  %38 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %38, i32 0, i32 2
  store %struct.v4l2_m2m_ops* %37, %struct.v4l2_m2m_ops** %39, align 8
  %40 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  store %struct.v4l2_m2m_dev* %46, %struct.v4l2_m2m_dev** %2, align 8
  br label %47

47:                                               ; preds = %34, %30, %7
  %48 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %2, align 8
  ret %struct.v4l2_m2m_dev* %48
}

declare dso_local %struct.v4l2_m2m_dev* @ERR_PTR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.v4l2_m2m_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
