; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes.c_hermes_write_ltv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hermes.c_hermes_write_ltv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { i32 }

@HERMES_DATA1 = common dso_local global i32 0, align 4
@HERMES_DATA0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HERMES_CMD_ACCESS = common dso_local global i32 0, align 4
@HERMES_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32, i32, i32, i8*)* @hermes_write_ltv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermes_write_ltv(%struct.hermes* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hermes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @HERMES_DATA1, align 4
  br label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @HERMES_DATA0, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load %struct.hermes*, %struct.hermes** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @hermes_bap_seek(%struct.hermes* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load %struct.hermes*, %struct.hermes** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @hermes_write_reg(%struct.hermes* %38, i32 %39, i32 %40)
  %42 = load %struct.hermes*, %struct.hermes** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @hermes_write_reg(%struct.hermes* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = load %struct.hermes*, %struct.hermes** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %14, align 4
  %52 = shl i32 %51, 1
  %53 = call i32 @hermes_write_bytes(%struct.hermes* %48, i32 %49, i8* %50, i32 %52)
  %54 = load %struct.hermes*, %struct.hermes** %7, align 8
  %55 = load i32, i32* @HERMES_CMD_ACCESS, align 4
  %56 = load i32, i32* @HERMES_CMD_WRITE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @hermes_docmd_wait(%struct.hermes* %54, i32 %57, i32 %58, i32* null)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %37, %35, %25
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @hermes_bap_seek(%struct.hermes*, i32, i32, i32) #1

declare dso_local i32 @hermes_write_reg(%struct.hermes*, i32, i32) #1

declare dso_local i32 @hermes_write_bytes(%struct.hermes*, i32, i8*, i32) #1

declare dso_local i32 @hermes_docmd_wait(%struct.hermes*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
