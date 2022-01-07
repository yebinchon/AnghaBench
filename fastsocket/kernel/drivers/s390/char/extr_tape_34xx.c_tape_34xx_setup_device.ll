; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_setup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.list_head* }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"34xx device setup\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"34xx medium sense returned %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*)* @tape_34xx_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_setup_device(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %5 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %7 = call i32 @tape_std_assign(%struct.tape_device* %6)
  store i32 %7, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %11 = call i32 @tape_34xx_medium_sense(%struct.tape_device* %10)
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @DBF_LH(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.list_head* @kmalloc(i32 4, i32 %18)
  store %struct.list_head* %19, %struct.list_head** %4, align 8
  %20 = load %struct.list_head*, %struct.list_head** %4, align 8
  %21 = icmp ne %struct.list_head* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.list_head*, %struct.list_head** %4, align 8
  %24 = call i32 @INIT_LIST_HEAD(%struct.list_head* %23)
  %25 = load %struct.list_head*, %struct.list_head** %4, align 8
  %26 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %27 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %26, i32 0, i32 0
  store %struct.list_head* %25, %struct.list_head** %27, align 8
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @tape_std_assign(%struct.tape_device*) #1

declare dso_local i32 @tape_34xx_medium_sense(%struct.tape_device*) #1

declare dso_local i32 @DBF_LH(i32, i8*, i32) #1

declare dso_local %struct.list_head* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
