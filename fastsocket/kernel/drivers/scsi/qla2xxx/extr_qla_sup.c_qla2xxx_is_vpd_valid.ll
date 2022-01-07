; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_is_vpd_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_is_vpd_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @qla2xxx_is_vpd_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_is_vpd_valid(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp uge i32* %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 130
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 3, %17
  %19 = load i32*, i32** %4, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp uge i32* %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 144
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %14
  store i32 0, i32* %3, align 4
  br label %47

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 3, %33
  %35 = load i32*, i32** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp uge i32* %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 120
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %30
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %29, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
