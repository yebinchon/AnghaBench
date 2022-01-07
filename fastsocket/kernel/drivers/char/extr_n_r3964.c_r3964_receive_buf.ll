; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_r3964_receive_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_r3964_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.r3964_info* }
%struct.r3964_info = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @r3964_receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3964_receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.r3964_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.r3964_info*, %struct.r3964_info** %15, align 8
  store %struct.r3964_info* %16, %struct.r3964_info** %9, align 8
  store i8 0, i8* %12, align 1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %46, %4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %11, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %12, align 1
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i8, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @TTY_NORMAL, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.r3964_info*, %struct.r3964_info** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @receive_char(%struct.r3964_info* %37, i8 zeroext %39)
  br label %45

41:                                               ; preds = %30
  %42 = load %struct.r3964_info*, %struct.r3964_info** %9, align 8
  %43 = load i8, i8* %12, align 1
  %44 = call i32 @receive_error(%struct.r3964_info* %42, i8 signext %43)
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %13, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  br label %20

51:                                               ; preds = %20
  ret void
}

declare dso_local i32 @receive_char(%struct.r3964_info*, i8 zeroext) #1

declare dso_local i32 @receive_error(%struct.r3964_info*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
