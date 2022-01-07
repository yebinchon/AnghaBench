; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16 }

@IMM_SPIN_TMO = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"imm timeout in imm_wait\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_4__*)* @imm_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @imm_wait(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %5, align 2
  %10 = load i16, i16* %5, align 2
  %11 = call i32 @w_ctr(i16 zeroext %10, i32 12)
  %12 = load i32, i32* @IMM_SPIN_TMO, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i16, i16* %5, align 2
  %15 = call zeroext i8 @r_str(i16 zeroext %14)
  store i8 %15, i8* %6, align 1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = call i32 @udelay(i32 1)
  br label %19

19:                                               ; preds = %13
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %13, label %29

29:                                               ; preds = %27
  %30 = load i16, i16* %5, align 2
  %31 = call i32 @w_ctr(i16 zeroext %30, i32 4)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 184
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %2, align 1
  br label %44

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = load i32, i32* @DID_TIME_OUT, align 4
  %42 = call i32 @imm_fail(%struct.TYPE_4__* %40, i32 %41)
  %43 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i8 0, i8* %2, align 1
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i8, i8* %2, align 1
  ret i8 %45
}

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local zeroext i8 @r_str(i16 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @imm_fail(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
