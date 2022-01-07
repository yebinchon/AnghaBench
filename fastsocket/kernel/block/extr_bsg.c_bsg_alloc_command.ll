; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_alloc_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_bsg_alloc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_command = type { i32, %struct.bsg_device* }
%struct.bsg_device = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@bsg_cmd_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: returning free cmd %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsg_command* (%struct.bsg_device*)* @bsg_alloc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsg_command* @bsg_alloc_command(%struct.bsg_device* %0) #0 {
  %2 = alloca %struct.bsg_command*, align 8
  %3 = alloca %struct.bsg_device*, align 8
  %4 = alloca %struct.bsg_command*, align 8
  store %struct.bsg_device* %0, %struct.bsg_device** %3, align 8
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  %7 = call %struct.bsg_command* @ERR_PTR(i32 %6)
  store %struct.bsg_command* %7, %struct.bsg_command** %4, align 8
  %8 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %9 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %8, i32 0, i32 2
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %12 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %15 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %21 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %25 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %24, i32 0, i32 2
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = load i32, i32* @bsg_cmd_cachep, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.bsg_command* @kmem_cache_zalloc(i32 %27, i32 %28)
  store %struct.bsg_command* %29, %struct.bsg_command** %4, align 8
  %30 = load %struct.bsg_command*, %struct.bsg_command** %4, align 8
  %31 = icmp ne %struct.bsg_command* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %19
  %37 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %38 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %41 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.bsg_command* @ERR_PTR(i32 %45)
  store %struct.bsg_command* %46, %struct.bsg_command** %4, align 8
  br label %60

47:                                               ; preds = %19
  %48 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %49 = load %struct.bsg_command*, %struct.bsg_command** %4, align 8
  %50 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %49, i32 0, i32 1
  store %struct.bsg_device* %48, %struct.bsg_device** %50, align 8
  %51 = load %struct.bsg_command*, %struct.bsg_command** %4, align 8
  %52 = getelementptr inbounds %struct.bsg_command, %struct.bsg_command* %51, i32 0, i32 0
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %55 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bsg_command*, %struct.bsg_command** %4, align 8
  %58 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56, %struct.bsg_command* %57)
  %59 = load %struct.bsg_command*, %struct.bsg_command** %4, align 8
  store %struct.bsg_command* %59, %struct.bsg_command** %2, align 8
  br label %65

60:                                               ; preds = %36, %18
  %61 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %62 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock_irq(i32* %62)
  %64 = load %struct.bsg_command*, %struct.bsg_command** %4, align 8
  store %struct.bsg_command* %64, %struct.bsg_command** %2, align 8
  br label %65

65:                                               ; preds = %60, %47
  %66 = load %struct.bsg_command*, %struct.bsg_command** %2, align 8
  ret %struct.bsg_command* %66
}

declare dso_local %struct.bsg_command* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.bsg_command* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, %struct.bsg_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
