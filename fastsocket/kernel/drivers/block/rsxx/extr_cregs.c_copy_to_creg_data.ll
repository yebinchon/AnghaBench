; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_cregs.c_copy_to_creg_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_cregs.c_copy_to_creg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@LITTLE_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, i32, i8*, i32)* @copy_to_creg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_to_creg_data(%struct.rsxx_cardinfo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsxx_cardinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %65

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load i64, i64* @LITTLE_ENDIAN, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %39 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @CREG_DATA(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @iowrite32be(i32 %37, i64 %43)
  br label %58

45:                                               ; preds = %29, %26
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %6, align 8
  %52 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @CREG_DATA(i32 %54)
  %56 = add nsw i64 %53, %55
  %57 = call i32 @iowrite32(i32 %50, i64 %56)
  br label %58

58:                                               ; preds = %45, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %7, align 4
  br label %23

64:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

declare dso_local i64 @CREG_DATA(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
