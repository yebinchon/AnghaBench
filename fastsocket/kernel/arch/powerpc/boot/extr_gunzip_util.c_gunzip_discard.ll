; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_gunzip_util.c_gunzip_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_gunzip_util.c_gunzip_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gunzip_state = type { i32 }

@gunzip_discard.discard_buf = internal global [128 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gunzip_discard(%struct.gunzip_state* %0, i32 %1) #0 {
  %3 = alloca %struct.gunzip_state*, align 8
  %4 = alloca i32, align 4
  store %struct.gunzip_state* %0, %struct.gunzip_state** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ugt i64 %7, 128
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.gunzip_state*, %struct.gunzip_state** %3, align 8
  %11 = call i32 @gunzip_exactly(%struct.gunzip_state* %10, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gunzip_discard.discard_buf, i64 0, i64 0), i32 128)
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 128
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  br label %5

16:                                               ; preds = %5
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.gunzip_state*, %struct.gunzip_state** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gunzip_exactly(%struct.gunzip_state* %20, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gunzip_discard.discard_buf, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @gunzip_exactly(%struct.gunzip_state*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
