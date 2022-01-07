; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_set_primary_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_set_primary_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@XMAC_ADDR0 = common dso_local global i32 0, align 4
@XMAC_ADDR1 = common dso_local global i32 0, align 4
@XMAC_ADDR2 = common dso_local global i32 0, align 4
@BMAC_ADDR0 = common dso_local global i32 0, align 4
@BMAC_ADDR1 = common dso_local global i32 0, align 4
@BMAC_ADDR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i8*)* @niu_set_primary_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_set_primary_mac(%struct.niu* %0, i8* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 4
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 %11, 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 5
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %12, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %5, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 8
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %23, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %6, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 8
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %34, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %7, align 1
  %41 = load %struct.niu*, %struct.niu** %3, align 8
  %42 = getelementptr inbounds %struct.niu, %struct.niu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %2
  %48 = load i32, i32* @XMAC_ADDR0, align 4
  %49 = load i8, i8* %5, align 1
  %50 = call i32 @nw64_mac(i32 %48, i8 zeroext %49)
  %51 = load i32, i32* @XMAC_ADDR1, align 4
  %52 = load i8, i8* %6, align 1
  %53 = call i32 @nw64_mac(i32 %51, i8 zeroext %52)
  %54 = load i32, i32* @XMAC_ADDR2, align 4
  %55 = load i8, i8* %7, align 1
  %56 = call i32 @nw64_mac(i32 %54, i8 zeroext %55)
  br label %67

57:                                               ; preds = %2
  %58 = load i32, i32* @BMAC_ADDR0, align 4
  %59 = load i8, i8* %5, align 1
  %60 = call i32 @nw64_mac(i32 %58, i8 zeroext %59)
  %61 = load i32, i32* @BMAC_ADDR1, align 4
  %62 = load i8, i8* %6, align 1
  %63 = call i32 @nw64_mac(i32 %61, i8 zeroext %62)
  %64 = load i32, i32* @BMAC_ADDR2, align 4
  %65 = load i8, i8* %7, align 1
  %66 = call i32 @nw64_mac(i32 %64, i8 zeroext %65)
  br label %67

67:                                               ; preds = %57, %47
  ret void
}

declare dso_local i32 @nw64_mac(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
