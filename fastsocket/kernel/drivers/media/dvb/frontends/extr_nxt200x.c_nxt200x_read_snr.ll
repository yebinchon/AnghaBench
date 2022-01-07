; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt200x_state* }
%struct.nxt200x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @nxt200x_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt200x_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nxt200x_state*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.nxt200x_state*, %struct.nxt200x_state** %11, align 8
  store %struct.nxt200x_state* %12, %struct.nxt200x_state** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %16 = call i32 @nxt200x_writebytes(%struct.nxt200x_state* %14, i32 161, i32* %15, i32 1)
  %17 = load %struct.nxt200x_state*, %struct.nxt200x_state** %5, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %19 = call i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state* %17, i32 166, i32* %18, i32 2)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 32767, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 32512
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 32512
  %33 = mul nsw i32 6000, %32
  %34 = sdiv i32 %33, 255
  %35 = add nsw i32 24000, %34
  store i32 %35, i32* %9, align 4
  br label %62

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 32448
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %40, 32448
  %42 = mul nsw i32 6000, %41
  %43 = sdiv i32 %42, 64
  %44 = add nsw i32 18000, %43
  store i32 %44, i32* %9, align 4
  br label %61

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 31744
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 31744
  %51 = mul nsw i32 6000, %50
  %52 = sdiv i32 %51, 704
  %53 = add nsw i32 12000, %52
  store i32 %53, i32* %9, align 4
  br label %60

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 0
  %57 = mul nsw i32 12000, %56
  %58 = sdiv i32 %57, 31744
  %59 = add nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load i32*, i32** %4, align 8
  store i32 %64, i32* %65, align 4
  ret i32 0
}

declare dso_local i32 @nxt200x_writebytes(%struct.nxt200x_state*, i32, i32*, i32) #1

declare dso_local i32 @nxt200x_readreg_multibyte(%struct.nxt200x_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
