; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_sf1_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_sf1_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SF_OP = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SF_CONT = common dso_local global i32 0, align 4
@SF_LOCK = common dso_local global i32 0, align 4
@SF_ATTEMPTS = common dso_local global i32 0, align 4
@SF_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32, i32*)* @sf1_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf1_read(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %70

21:                                               ; preds = %15
  %22 = load %struct.adapter*, %struct.adapter** %7, align 8
  %23 = load i32, i32* @SF_OP, align 4
  %24 = call i32 @t4_read_reg(%struct.adapter* %22, i32 %23)
  %25 = load i32, i32* @BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %70

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @SF_CONT, align 4
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @SF_LOCK, align 4
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* %10, align 4
  %46 = load %struct.adapter*, %struct.adapter** %7, align 8
  %47 = load i32, i32* @SF_OP, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = sub i32 %51, 1
  %53 = call i32 @BYTECNT(i32 %52)
  %54 = or i32 %50, %53
  %55 = call i32 @t4_write_reg(%struct.adapter* %46, i32 %47, i32 %54)
  %56 = load %struct.adapter*, %struct.adapter** %7, align 8
  %57 = load i32, i32* @SF_OP, align 4
  %58 = load i32, i32* @BUSY, align 4
  %59 = load i32, i32* @SF_ATTEMPTS, align 4
  %60 = call i32 @t4_wait_op_done(%struct.adapter* %56, i32 %57, i32 %58, i32 0, i32 %59, i32 5)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %44
  %64 = load %struct.adapter*, %struct.adapter** %7, align 8
  %65 = load i32, i32* @SF_DATA, align 4
  %66 = call i32 @t4_read_reg(%struct.adapter* %64, i32 %65)
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %44
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %28, %18
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @BYTECNT(i32) #1

declare dso_local i32 @t4_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
