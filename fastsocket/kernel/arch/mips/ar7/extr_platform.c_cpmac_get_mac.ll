; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/ar7/extr_platform.c_cpmac_get_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/ar7/extr_platform.c_cpmac_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mac%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @cpmac_get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_get_mac(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 97, %15
  %17 = trunc i32 %16 to i8
  %18 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %17)
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %20 = call i8* @prom_getenv(i8* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext 97)
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %27 = call i8* @prom_getenv(i8* %26)
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @random_ether_addr(i8* %13)
  store i8* %13, i8** %9, align 8
  br label %33

33:                                               ; preds = %31, %28
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %60, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @char2hex(i8 signext %43)
  %45 = shl i32 %44, 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 3
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @char2hex(i8 signext %52)
  %54 = add nsw i32 %45, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  br label %60

60:                                               ; preds = %37
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %34

63:                                               ; preds = %34
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #2

declare dso_local i8* @prom_getenv(i8*) #2

declare dso_local i32 @random_ether_addr(i8*) #2

declare dso_local i32 @char2hex(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
