; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_sf1_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_sf1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SF_OP = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SF_CONT = common dso_local global i32 0, align 4
@SF_LOCK = common dso_local global i32 0, align 4
@SF_DATA = common dso_local global i32 0, align 4
@OP_WR = common dso_local global i32 0, align 4
@SF_ATTEMPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32, i32)* @sf1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sf1_write(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %66

20:                                               ; preds = %14
  %21 = load %struct.adapter*, %struct.adapter** %7, align 8
  %22 = load i32, i32* @SF_OP, align 4
  %23 = call i32 @t4_read_reg(%struct.adapter* %21, i32 %22)
  %24 = load i32, i32* @BUSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %66

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @SF_CONT, align 4
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @SF_LOCK, align 4
  br label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %10, align 4
  %45 = load %struct.adapter*, %struct.adapter** %7, align 8
  %46 = load i32, i32* @SF_DATA, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @t4_write_reg(%struct.adapter* %45, i32 %46, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %7, align 8
  %50 = load i32, i32* @SF_OP, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = sub i32 %54, 1
  %56 = call i32 @BYTECNT(i32 %55)
  %57 = or i32 %53, %56
  %58 = load i32, i32* @OP_WR, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @t4_write_reg(%struct.adapter* %49, i32 %50, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %7, align 8
  %62 = load i32, i32* @SF_OP, align 4
  %63 = load i32, i32* @BUSY, align 4
  %64 = load i32, i32* @SF_ATTEMPTS, align 4
  %65 = call i32 @t4_wait_op_done(%struct.adapter* %61, i32 %62, i32 %63, i32 0, i32 %64, i32 5)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %43, %27, %17
  %67 = load i32, i32* %6, align 4
  ret i32 %67
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
