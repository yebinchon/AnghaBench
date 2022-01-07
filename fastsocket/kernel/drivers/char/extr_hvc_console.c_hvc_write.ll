; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hvc_struct* }
%struct.hvc_struct = type { i64, i64, i32, i32, i32 }

@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @hvc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hvc_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.hvc_struct*, %struct.hvc_struct** %13, align 8
  store %struct.hvc_struct* %14, %struct.hvc_struct** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %16 = icmp ne %struct.hvc_struct* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EPIPE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %107

20:                                               ; preds = %3
  %21 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %22 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %107

28:                                               ; preds = %20
  %29 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %30 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %29, i32 0, i32 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %34 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %39 = call i32 @hvc_push(%struct.hvc_struct* %38)
  br label %40

40:                                               ; preds = %37, %28
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %46 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %50 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br label %55

55:                                               ; preds = %44, %41
  %56 = phi i1 [ false, %41 ], [ %54, %44 ]
  br i1 %56, label %57, label %94

57:                                               ; preds = %55
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %65 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %69 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = trunc i64 %71 to i32
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @memcpy(i32 %72, i8* %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %86 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %93 = call i32 @hvc_push(%struct.hvc_struct* %92)
  br label %41

94:                                               ; preds = %55
  %95 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %96 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %95, i32 0, i32 4
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %100 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = call i32 (...) @hvc_kick()
  br label %105

105:                                              ; preds = %103, %94
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %25, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hvc_push(%struct.hvc_struct*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hvc_kick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
