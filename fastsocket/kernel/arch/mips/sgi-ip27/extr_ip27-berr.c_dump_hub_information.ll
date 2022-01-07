; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-berr.c_dump_hub_information.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-berr.c_dump_hub_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_hub_information.err_type = internal global [2 x [8 x i8*]] [[8 x i8*] [i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null], [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null]], align 16
@.str = private unnamed_addr constant [28 x i8] c"Uncached Partial Read PRERR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DERR\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Read Timeout\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"WERR\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Uncached Partial Write\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PWERR\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Write Timeout\00", align 1
@PI_ERR_ST1_WRBRRB_MASK = common dso_local global i64 0, align 8
@PI_ERR_ST0_VALID_MASK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"Hub does not contain valid error information\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Hub has valid error information:\0A\00", align 1
@PI_ERR_ST0_OVERRUN_MASK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [66 x i8] c"Overrun is set.  Error stack may contain additional information.\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Hub error address is %08lx\0A\00", align 1
@PI_ERR_ST0_ADDR_MASK = common dso_local global i64 0, align 8
@PI_ERR_ST0_ADDR_SHFT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Incoming message command 0x%lx\0A\00", align 1
@PI_ERR_ST0_CMD_MASK = common dso_local global i64 0, align 8
@PI_ERR_ST0_CMD_SHFT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"Supplemental field of incoming message is 0x%lx\0A\00", align 1
@PI_ERR_ST0_SUPPL_MASK = common dso_local global i64 0, align 8
@PI_ERR_ST0_SUPPL_SHFT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [31 x i8] c"T5 Rn (for RRB only) is 0x%lx\0A\00", align 1
@PI_ERR_ST0_REQNUM_MASK = common dso_local global i64 0, align 8
@PI_ERR_ST0_REQNUM_SHFT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"Error type is %s\0A\00", align 1
@PI_ERR_ST0_TYPE_MASK = common dso_local global i64 0, align 8
@PI_ERR_ST0_TYPE_SHFT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @dump_hub_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_hub_information(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PI_ERR_ST1_WRBRRB_MASK, align 8
  %8 = and i64 %6, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @PI_ERR_ST0_VALID_MASK, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %67

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @PI_ERR_ST0_OVERRUN_MASK, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @PI_ERR_ST0_ADDR_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i32, i32* @PI_ERR_ST0_ADDR_SHFT, align 4
  %29 = sub nsw i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = lshr i64 %27, %30
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @PI_ERR_ST0_CMD_MASK, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* @PI_ERR_ST0_CMD_SHFT, align 8
  %37 = lshr i64 %35, %36
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @PI_ERR_ST0_SUPPL_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @PI_ERR_ST0_SUPPL_SHFT, align 8
  %43 = lshr i64 %41, %42
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @PI_ERR_ST0_REQNUM_MASK, align 8
  %47 = and i64 %45, %46
  %48 = load i64, i64* @PI_ERR_ST0_REQNUM_SHFT, align 8
  %49 = lshr i64 %47, %48
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x [8 x i8*]], [2 x [8 x i8*]]* @dump_hub_information.err_type, i64 0, i64 %52
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @PI_ERR_ST0_TYPE_MASK, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @PI_ERR_ST0_TYPE_SHFT, align 8
  %58 = lshr i64 %56, %57
  %59 = getelementptr inbounds [8 x i8*], [8 x i8*]* %53, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %24
  br label %64

63:                                               ; preds = %24
  br label %64

64:                                               ; preds = %63, %62
  %65 = phi i8* [ %60, %62 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %63 ]
  %66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %14
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
