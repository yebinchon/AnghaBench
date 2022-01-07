; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_cfc.c_pcc_iowrite_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_cfc.c_pcc_iowrite_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [84 x i8] c"m32r_cfc: pcc_iowrite_byte: sock=%d, port=%#lx, buf=%p, size=%u, nmemb=%d, flag=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"m32r_cfc:iowrite_byte null port:%#lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"m32r_cfc: pcc_iowrite_byte: addr=%#lx\0A\00", align 1
@pcc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcc_iowrite_byte(i32 %0, i64 %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %14, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18, i8* %19, i64 %20, i64 %21, i32 %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @pcc_port2addr(i64 %24, i32 1)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %50

31:                                               ; preds = %6
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @spin_lock_irqsave(i32* @pcc_lock, i64 %34)
  br label %36

36:                                               ; preds = %40, %31
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %11, align 8
  %39 = icmp ne i64 %37, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %14, align 8
  %43 = load i8, i8* %41, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @writeb(i32 %44, i32 %45)
  br label %36

47:                                               ; preds = %36
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* @pcc_lock, i64 %48)
  br label %50

50:                                               ; preds = %47, %28
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @pcc_port2addr(i64, i32) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
