; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.c_sbcl_to_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_53c700.c_sbcl_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sbcl_to_string.ret = internal global [256 x i8] zeroinitializer, align 16
@NCR_700_SBCL_bits = common dso_local global i32* null, align 8
@NCR_700_SBCL_to_phase = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @sbcl_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sbcl_to_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sbcl_to_string.ret, i64 0, i64 0), align 16
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i32*, i32** @NCR_700_SBCL_bits, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sbcl_to_string.ret, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %13, %7
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load i32*, i32** @NCR_700_SBCL_to_phase, align 8
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sbcl_to_string.ret, i64 0, i64 0), i32 %30)
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sbcl_to_string.ret, i64 0, i64 0)
}

declare dso_local i32 @strcat(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
