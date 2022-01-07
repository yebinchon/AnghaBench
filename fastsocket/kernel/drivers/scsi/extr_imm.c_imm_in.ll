; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16, i32 }

@DID_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IMM: bug in imm_ins()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @imm_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_in(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 4
  store i16 %12, i16* %8, align 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32 @imm_wait(%struct.TYPE_6__* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 24
  %17 = icmp ne i32 %16, 24
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load i32, i32* @DID_ERROR, align 4
  %21 = call i32 @imm_fail(%struct.TYPE_6__* %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %84

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %80 [
    i32 129, label %26
    i32 128, label %33
    i32 131, label %40
    i32 132, label %40
    i32 130, label %40
  ]

26:                                               ; preds = %22
  %27 = load i16, i16* %8, align 2
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @imm_nibble_in(i16 zeroext %27, i8* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i16, i16* %8, align 2
  %32 = call i32 @w_ctr(i16 zeroext %31, i32 12)
  br label %82

33:                                               ; preds = %22
  %34 = load i16, i16* %8, align 2
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @imm_byte_in(i16 zeroext %34, i8* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i16, i16* %8, align 2
  %39 = call i32 @w_ctr(i16 zeroext %38, i32 12)
  br label %82

40:                                               ; preds = %22, %22, %22
  %41 = load i16, i16* %8, align 2
  %42 = call i32 @epp_reset(i16 zeroext %41)
  %43 = load i16, i16* %8, align 2
  %44 = call i32 @w_ctr(i16 zeroext %43, i32 36)
  %45 = load i8*, i8** %6, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = or i64 %46, %48
  %50 = and i64 %49, 3
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %40
  %53 = load i16, i16* %8, align 2
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %54, 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 2
  %59 = call i32 @insl(i32 %55, i8* %56, i32 %58)
  br label %67

60:                                               ; preds = %40
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = add nsw i32 %62, 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @insb(i32 %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %52
  %68 = load i16, i16* %8, align 2
  %69 = call i32 @w_ctr(i16 zeroext %68, i32 44)
  %70 = load i16, i16* %8, align 2
  %71 = call i32 @r_str(i16 zeroext %70)
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i16, i16* %8, align 2
  %77 = call i32 @w_ctr(i16 zeroext %76, i32 44)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = call i32 @ecp_sync(%struct.TYPE_6__* %78)
  br label %82

80:                                               ; preds = %22
  %81 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %67, %33, %26
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @imm_wait(%struct.TYPE_6__*) #1

declare dso_local i32 @imm_fail(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @imm_nibble_in(i16 zeroext, i8*, i32) #1

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @imm_byte_in(i16 zeroext, i8*, i32) #1

declare dso_local i32 @epp_reset(i16 zeroext) #1

declare dso_local i32 @insl(i32, i8*, i32) #1

declare dso_local i32 @insb(i32, i8*, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i32 @ecp_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
