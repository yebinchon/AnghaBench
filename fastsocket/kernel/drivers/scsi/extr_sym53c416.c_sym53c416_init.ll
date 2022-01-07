; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sym53c416.c_sym53c416_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESET_CHIP = common dso_local global i32 0, align 4
@COMMAND_REG = common dso_local global i64 0, align 8
@NOOP = common dso_local global i32 0, align 4
@TOM = common dso_local global i64 0, align 8
@STP = common dso_local global i64 0, align 8
@SYNC_OFFSET = common dso_local global i64 0, align 8
@EPC = common dso_local global i32 0, align 4
@CONF_REG_1 = common dso_local global i64 0, align 8
@FE = common dso_local global i32 0, align 4
@SCSI2 = common dso_local global i32 0, align 4
@TBPA = common dso_local global i32 0, align 4
@CONF_REG_2 = common dso_local global i64 0, align 8
@IDMRC = common dso_local global i32 0, align 4
@QTE = common dso_local global i32 0, align 4
@CDB10 = common dso_local global i32 0, align 4
@FSCSI = common dso_local global i32 0, align 4
@FCLK = common dso_local global i32 0, align 4
@CONF_REG_3 = common dso_local global i64 0, align 8
@EAN = common dso_local global i32 0, align 4
@CONF_REG_4 = common dso_local global i64 0, align 8
@IE = common dso_local global i32 0, align 4
@WSE0 = common dso_local global i32 0, align 4
@CONF_REG_5 = common dso_local global i64 0, align 8
@FEATURE_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @sym53c416_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym53c416_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @RESET_CHIP, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* @COMMAND_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @outb(i32 %5, i64 %9)
  %11 = load i32, i32* @NOOP, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @COMMAND_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb(i32 %11, i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @TOM, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 153, i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @STP, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 5, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @SYNC_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 0, i64 %30)
  %32 = load i32, i32* @EPC, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @CONF_REG_1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 %34, i64 %38)
  %40 = load i32, i32* @FE, align 4
  %41 = load i32, i32* @SCSI2, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TBPA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @CONF_REG_2, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb(i32 %44, i64 %48)
  %50 = load i32, i32* @IDMRC, align 4
  %51 = load i32, i32* @QTE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CDB10, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FSCSI, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FCLK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @CONF_REG_3, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %58, i64 %62)
  %64 = load i32, i32* @EAN, align 4
  %65 = or i32 131, %64
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @CONF_REG_4, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb(i32 %65, i64 %69)
  %71 = load i32, i32* @IE, align 4
  %72 = load i32, i32* @WSE0, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @CONF_REG_5, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 %73, i64 %77)
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @FEATURE_EN, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 0, i64 %82)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
