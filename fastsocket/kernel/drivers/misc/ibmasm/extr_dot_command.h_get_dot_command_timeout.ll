; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_dot_command.h_get_dot_command_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_dot_command.h_get_dot_command_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dot_command_header = type { i32 }

@IBMASM_CMD_TIMEOUT_EXTRA = common dso_local global i32 0, align 4
@IBMASM_CMD_TIMEOUT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_dot_command_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dot_command_timeout(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dot_command_header*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.dot_command_header*
  store %struct.dot_command_header* %7, %struct.dot_command_header** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr i8, i8* %8, i64 4
  store i8* %9, i8** %5, align 8
  %10 = load %struct.dot_command_header*, %struct.dot_command_header** %4, align 8
  %11 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @IBMASM_CMD_TIMEOUT_EXTRA, align 4
  store i32 %33, i32* %2, align 4
  br label %66

34:                                               ; preds = %26, %20, %14
  br label %64

35:                                               ; preds = %1
  %36 = load %struct.dot_command_header*, %struct.dot_command_header** %4, align 8
  %37 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @IBMASM_CMD_TIMEOUT_EXTRA, align 4
  store i32 %53, i32* %2, align 4
  br label %66

54:                                               ; preds = %46, %40
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @IBMASM_CMD_TIMEOUT_EXTRA, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* @IBMASM_CMD_TIMEOUT_NORMAL, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %60, %52, %32
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
