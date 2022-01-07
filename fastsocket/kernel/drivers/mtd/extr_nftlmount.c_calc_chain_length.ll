; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_calc_chain_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_calc_chain_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"nftl: length too long %d !\0A\00", align 1
@BLOCK_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"incorrect ReplUnitTable[] : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NFTLrecord*, i32)* @calc_chain_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_chain_length(%struct.NFTLrecord* %0, i32 %1) #0 {
  %3 = alloca %struct.NFTLrecord*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %13 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %51

19:                                               ; preds = %8
  %20 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %21 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BLOCK_NIL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %33 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %30, %19
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BLOCK_NIL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %46 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %39
  br label %51

50:                                               ; preds = %43
  br label %8

51:                                               ; preds = %49, %16
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
