; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tbuf_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tbuf_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TDCSR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @tbuf_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbuf_bytes(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %9 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %13 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @desc_count(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %32 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %27
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %11, label %55

55:                                               ; preds = %49
  %56 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %57 = load i32, i32* @TDCSR, align 4
  %58 = call i32 @rd_reg32(%struct.slgt_info* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @BIT0, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32, i32* %5, align 4
  %69 = lshr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load i32, i32* %3, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %3, align 4
  %73 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %74 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %67
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @desc_count(i32) #1

declare dso_local i32 @rd_reg32(%struct.slgt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
