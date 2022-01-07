; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_pmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_pmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32 }
%struct.ca_msg = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, i8*)* @fdtv_ca_pmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_pmt(%struct.firedtv* %0, i8* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ca_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ca_msg*
  store %struct.ca_msg* %10, %struct.ca_msg** %5, align 8
  store i32 4, i32* %6, align 4
  %11 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %12 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 128
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %22 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 127
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 8
  %31 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %30, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %19

43:                                               ; preds = %19
  br label %50

44:                                               ; preds = %2
  %45 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %46 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %44, %43
  %51 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %52 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %53 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @avc_ca_pmt(%struct.firedtv* %51, i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  br label %65

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  ret i32 %66
}

declare dso_local i64 @avc_ca_pmt(%struct.firedtv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
