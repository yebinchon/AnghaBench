; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ppa.c_ppa_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16 }

@PPA_SELECT_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @ppa_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppa_select(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %7, align 2
  %11 = load i32, i32* @PPA_SELECT_TMO, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = call i32 @udelay(i32 1)
  br label %16

16:                                               ; preds = %12
  %17 = load i16, i16* %7, align 2
  %18 = call i32 @r_str(i16 zeroext %17)
  %19 = and i32 %18, 64
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i1 [ false, %16 ], [ %23, %21 ]
  br i1 %25, label %12, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

30:                                               ; preds = %26
  %31 = load i16, i16* %7, align 2
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = call i32 @w_dtr(i16 zeroext %31, i32 %33)
  %35 = load i16, i16* %7, align 2
  %36 = call i32 @w_ctr(i16 zeroext %35, i32 14)
  %37 = load i16, i16* %7, align 2
  %38 = call i32 @w_ctr(i16 zeroext %37, i32 12)
  %39 = load i16, i16* %7, align 2
  %40 = call i32 @w_dtr(i16 zeroext %39, i32 128)
  %41 = load i16, i16* %7, align 2
  %42 = call i32 @w_ctr(i16 zeroext %41, i32 8)
  %43 = load i32, i32* @PPA_SELECT_TMO, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %56, %30
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  %47 = call i32 @udelay(i32 1)
  br label %48

48:                                               ; preds = %44
  %49 = load i16, i16* %7, align 2
  %50 = call i32 @r_str(i16 zeroext %49)
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i1 [ false, %48 ], [ %55, %53 ]
  br i1 %57, label %44, label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i32 @w_dtr(i16 zeroext, i32) #1

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
