; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_i2c_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_i2c_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_port = common dso_local global i32 0, align 4
@data_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pms_i2c_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms_i2c_stat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @io_port, align 4
  %8 = call i32 @outb(i32 40, i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %19, %1
  %10 = load i32, i32* @data_port, align 4
  %11 = call i32 @inb(i32 %10)
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = icmp eq i32 %15, 256
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %14
  br label %9

20:                                               ; preds = %18, %9
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* @data_port, align 4
  %23 = call i32 @inb(i32 %22)
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = icmp eq i32 %27, 256
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %32

31:                                               ; preds = %26
  br label %21

32:                                               ; preds = %30, %21
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @io_port, align 4
  %35 = call i32 @outb(i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %46, %32
  %37 = load i32, i32* @data_port, align 4
  %38 = call i32 @inb(i32 %37)
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = icmp eq i32 %42, 256
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41
  br label %36

47:                                               ; preds = %45, %36
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32, i32* @data_port, align 4
  %50 = call i32 @inb(i32 %49)
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = icmp eq i32 %54, 256
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %48

59:                                               ; preds = %57, %48
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 12
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32, i32* @data_port, align 4
  %65 = call i32 @inb(i32 %64)
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %6, align 1
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 -1, i32* %2, align 4
  br label %87

72:                                               ; preds = %63
  %73 = load i8, i8* %6, align 1
  %74 = sext i8 %73 to i32
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %82

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %60

82:                                               ; preds = %77, %60
  %83 = load i32, i32* @io_port, align 4
  %84 = call i32 @outb(i32 41, i32 %83)
  %85 = load i32, i32* @data_port, align 4
  %86 = call i32 @inb(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %71
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
