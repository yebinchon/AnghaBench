; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, i64 }

@TALITOS_IMR = common dso_local global i64 0, align 8
@TALITOS_IMR_INIT = common dso_local global i32 0, align 4
@TALITOS_IMR_LO = common dso_local global i64 0, align 8
@TALITOS_IMR_LO_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @talitos_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @talitos_done(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.talitos_private*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.device*
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %8)
  store %struct.talitos_private* %9, %struct.talitos_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %13 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @flush_channel(%struct.device* %17, i32 %18, i32 0, i32 0)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %25 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TALITOS_IMR, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @TALITOS_IMR_INIT, align 4
  %30 = call i32 @setbits32(i64 %28, i32 %29)
  %31 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %32 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TALITOS_IMR_LO, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @TALITOS_IMR_LO_INIT, align 4
  %37 = call i32 @setbits32(i64 %35, i32 %36)
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @flush_channel(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @setbits32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
