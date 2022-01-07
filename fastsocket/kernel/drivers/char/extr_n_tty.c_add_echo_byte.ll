; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_add_echo_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_add_echo_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i8*, i32 }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@ECHO_OP_START = common dso_local global i8 0, align 1
@ECHO_OP_ERASE_TAB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.tty_struct*)* @add_echo_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_echo_byte(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %2
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @ECHO_OP_START, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %11
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %31, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @ECHO_OP_ERASE_TAB, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %28
  %47 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 3
  store i32 %50, i32* %48, align 4
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 2
  store i32 %54, i32* %52, align 8
  br label %64

55:                                               ; preds = %28
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %57, align 4
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %55, %46
  br label %70

65:                                               ; preds = %11
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %74 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %78 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %77, i32 0, i32 3
  store i32 1, i32* %78, align 8
  br label %95

79:                                               ; preds = %2
  %80 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %81 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %84 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %79, %70
  %96 = load i8, i8* %3, align 1
  %97 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %98 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 %96, i8* %102, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
