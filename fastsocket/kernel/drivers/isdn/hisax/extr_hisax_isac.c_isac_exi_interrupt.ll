; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_exi_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_exi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i8 (%struct.isac*, i32)* }

@ISAC_EXIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"EXIR %#x\00", align 1
@ISAC_EXIR_XMR = common dso_local global i8 0, align 1
@DBG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ISAC XMR\00", align 1
@ISAC_EXIR_XDU = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ISAC XDU\00", align 1
@ISAC_EXIR_MOS = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MOS\00", align 1
@ISAC_MOSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"ISAC MOSR %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*)* @isac_exi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_exi_interrupt(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i8, align 1
  store %struct.isac* %0, %struct.isac** %2, align 8
  %4 = load %struct.isac*, %struct.isac** %2, align 8
  %5 = getelementptr inbounds %struct.isac, %struct.isac* %4, i32 0, i32 0
  %6 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %5, align 8
  %7 = load %struct.isac*, %struct.isac** %2, align 8
  %8 = load i32, i32* @ISAC_EXIR, align 4
  %9 = call zeroext i8 %6(%struct.isac* %7, i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = call i32 (i32, i8*, ...) @DBG(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @ISAC_EXIR_XMR, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @DBG_WARN, align 4
  %21 = call i32 (i32, i8*, ...) @DBG(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.isac*, %struct.isac** %2, align 8
  %23 = call i32 @isac_retransmit(%struct.isac* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @ISAC_EXIR_XDU, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @DBG_WARN, align 4
  %33 = call i32 (i32, i8*, ...) @DBG(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.isac*, %struct.isac** %2, align 8
  %35 = call i32 @isac_retransmit(%struct.isac* %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @ISAC_EXIR_MOS, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i32, i32* @DBG_WARN, align 4
  %45 = call i32 (i32, i8*, ...) @DBG(i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.isac*, %struct.isac** %2, align 8
  %47 = getelementptr inbounds %struct.isac, %struct.isac* %46, i32 0, i32 0
  %48 = load i8 (%struct.isac*, i32)*, i8 (%struct.isac*, i32)** %47, align 8
  %49 = load %struct.isac*, %struct.isac** %2, align 8
  %50 = load i32, i32* @ISAC_MOSR, align 4
  %51 = call zeroext i8 %48(%struct.isac* %49, i32 %50)
  store i8 %51, i8* %3, align 1
  %52 = load i8, i8* %3, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i32, i8*, ...) @DBG(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %43, %36
  ret void
}

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @isac_retransmit(%struct.isac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
