; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_read_ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_read_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SIFADX = common dso_local global i32 0, align 4
@SIFADR = common dso_local global i32 0, align 4
@SIFINC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i16, i32)* @tms380tr_read_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tms380tr_read_ram(%struct.net_device* %0, i8* %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @SIFADX, align 4
  %14 = call zeroext i16 @SIFREADW(i32 %13)
  store i16 %14, i16* %10, align 2
  %15 = load i32, i32* @SIFADR, align 4
  %16 = call zeroext i16 @SIFREADW(i32 %15)
  store i16 %16, i16* %11, align 2
  %17 = load i32, i32* @SIFADX, align 4
  %18 = call i32 @SIFWRITEW(i16 zeroext 1, i32 %17)
  %19 = load i16, i16* %7, align 2
  %20 = load i32, i32* @SIFADR, align 4
  %21 = call i32 @SIFWRITEW(i16 zeroext %19, i32 %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %48, %4
  %23 = load i32, i32* @SIFINC, align 4
  %24 = call zeroext i16 @SIFREADW(i32 %23)
  store i16 %24, i16* %12, align 2
  %25 = load i16, i16* %12, align 2
  %26 = call zeroext i8 @HIBYTE(i16 zeroext %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %49

36:                                               ; preds = %22
  %37 = load i16, i16* %12, align 2
  %38 = call zeroext i8 @LOBYTE(i16 zeroext %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %49

48:                                               ; preds = %36
  br label %22

49:                                               ; preds = %47, %35
  %50 = load i16, i16* %10, align 2
  %51 = load i32, i32* @SIFADX, align 4
  %52 = call i32 @SIFWRITEW(i16 zeroext %50, i32 %51)
  %53 = load i16, i16* %11, align 2
  %54 = load i32, i32* @SIFADR, align 4
  %55 = call i32 @SIFWRITEW(i16 zeroext %53, i32 %54)
  ret void
}

declare dso_local zeroext i16 @SIFREADW(i32) #1

declare dso_local i32 @SIFWRITEW(i16 zeroext, i32) #1

declare dso_local zeroext i8 @HIBYTE(i16 zeroext) #1

declare dso_local zeroext i8 @LOBYTE(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
