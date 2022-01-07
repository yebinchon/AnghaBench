; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_free_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_free_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { %struct.tape_request*, %struct.tape_request*, i32* }

@.str = private unnamed_addr constant [17 x i8] c"Free request %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tape_free_request(%struct.tape_request* %0) #0 {
  %2 = alloca %struct.tape_request*, align 8
  store %struct.tape_request* %0, %struct.tape_request** %2, align 8
  %3 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %4 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.tape_request* %3)
  %5 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %6 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %11 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32* @tape_put_device(i32* %12)
  %14 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %15 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %18 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %17, i32 0, i32 1
  %19 = load %struct.tape_request*, %struct.tape_request** %18, align 8
  %20 = call i32 @kfree(%struct.tape_request* %19)
  %21 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %22 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %21, i32 0, i32 0
  %23 = load %struct.tape_request*, %struct.tape_request** %22, align 8
  %24 = call i32 @kfree(%struct.tape_request* %23)
  %25 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %26 = call i32 @kfree(%struct.tape_request* %25)
  ret void
}

declare dso_local i32 @DBF_LH(i32, i8*, %struct.tape_request*) #1

declare dso_local i32* @tape_put_device(i32*) #1

declare dso_local i32 @kfree(%struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
