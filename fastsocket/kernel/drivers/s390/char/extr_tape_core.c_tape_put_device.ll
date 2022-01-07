; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_put_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_put_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.tape_device*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"tape_put_device(%p) -> %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"put device without reference\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"tape_free_device(%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tape_device* @tape_put_device(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  %3 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %4 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %5 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %4, i32 0, i32 1
  %6 = call i32 @atomic_dec_return(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.tape_device* %10, i32 %11)
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %27

18:                                               ; preds = %13
  %19 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %20 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.tape_device* %19)
  %21 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %22 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %21, i32 0, i32 0
  %23 = load %struct.tape_device*, %struct.tape_device** %22, align 8
  %24 = call i32 @kfree(%struct.tape_device* %23)
  %25 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %26 = call i32 @kfree(%struct.tape_device* %25)
  br label %27

27:                                               ; preds = %18, %16
  br label %28

28:                                               ; preds = %27, %9
  ret %struct.tape_device* null
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.tape_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
