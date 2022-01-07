; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_vsxxxaa.c_vsxxxaa_drop_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_vsxxxaa.c_vsxxxaa_drop_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsxxxaa = type { i32, i64 }

@BUFLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsxxxaa*, i32)* @vsxxxaa_drop_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsxxxaa_drop_bytes(%struct.vsxxxaa* %0, i32 %1) #0 {
  %3 = alloca %struct.vsxxxaa*, align 8
  %4 = alloca i32, align 4
  store %struct.vsxxxaa* %0, %struct.vsxxxaa** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vsxxxaa*, %struct.vsxxxaa** %3, align 8
  %7 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %5, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.vsxxxaa*, %struct.vsxxxaa** %3, align 8
  %12 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.vsxxxaa*, %struct.vsxxxaa** %3, align 8
  %15 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vsxxxaa*, %struct.vsxxxaa** %3, align 8
  %18 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = sub nsw i64 %22, 1
  %24 = load i64, i64* @BUFLEN, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %24, %26
  %28 = call i32 @memmove(i64 %16, i64 %23, i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.vsxxxaa*, %struct.vsxxxaa** %3, align 8
  %31 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @memmove(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
