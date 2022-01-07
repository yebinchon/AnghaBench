; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_DecodeSI2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_DecodeSI2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @DecodeSI2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeSI2(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @findie(i32 %7, i32 %10, i32 124, i32 0)
  store i32* %11, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  switch i32 %17, label %49 [
    i32 1, label %18
    i32 8, label %38
  ]

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DecodeSyncParams(i32 160, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %18
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @DecodeASyncParams(i32 192, i32* %34)
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  br label %49

38:                                               ; preds = %13
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DecodeSyncParams(i32 176, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %13, %48, %37
  br label %50

50:                                               ; preds = %49, %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %43, %33, %23
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32* @findie(i32, i32, i32, i32) #1

declare dso_local i32 @DecodeSyncParams(i32, i32) #1

declare dso_local i32 @DecodeASyncParams(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
