; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_assign_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_std.c_tape_std_assign_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { %struct.tape_device* }
%struct.tape_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"%08x: Assignment timeout. Device busy.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"(%s): Assign timeout: Cancel failed with rc = %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tape_std_assign_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_std_assign_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tape_request*, align 8
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.tape_request*
  store %struct.tape_request* %7, %struct.tape_request** %3, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %9 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %8, i32 0, i32 0
  %10 = load %struct.tape_device*, %struct.tape_device** %9, align 8
  store %struct.tape_device* %10, %struct.tape_device** %4, align 8
  %11 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %12 = icmp ne %struct.tape_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %17 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, i32, ...) @DBF_EVENT(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %21 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %22 = call i32 @tape_cancel_io(%struct.tape_device* %20, %struct.tape_request* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %27 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_name(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, i8*, i32, ...) @DBF_EVENT(i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32, ...) #1

declare dso_local i32 @tape_cancel_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
