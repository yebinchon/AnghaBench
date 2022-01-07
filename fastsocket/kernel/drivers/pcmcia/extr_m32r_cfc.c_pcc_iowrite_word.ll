; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_cfc.c_pcc_iowrite_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m32r_cfc.c_pcc_iowrite_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [84 x i8] c"m32r_cfc: pcc_iowrite_word: sock=%d, port=%#lx, buf=%p, size=%u, nmemb=%d, flag=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"m32r_cfc: iowrite_word :illigal size %u : %#lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"m32r_cfc: iowrite_word :outsw \0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"m32r_cfc:iowrite_word null addr :%#lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"m32r_cfc:iowrite_word port addr (%#lx):%#lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"m32r_cfc: pcc_iowrite_word: addr=%#lx\0A\00", align 1
@pcc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcc_iowrite_word(i32 %0, i64 %1, i8* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i16*
  store i16* %17, i16** %14, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %19, i8* %20, i64 %21, i64 %22, i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %6
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 9
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @pcc_port2addr(i64 %37, i32 2)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  br label %71

44:                                               ; preds = %36
  %45 = load i32, i32* %13, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %49, i32 %50)
  br label %71

52:                                               ; preds = %44
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %15, align 8
  %56 = call i32 @spin_lock_irqsave(i32* @pcc_lock, i64 %55)
  br label %57

57:                                               ; preds = %61, %52
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %11, align 8
  %60 = icmp ne i64 %58, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i16*, i16** %14, align 8
  %63 = getelementptr inbounds i16, i16* %62, i32 1
  store i16* %63, i16** %14, align 8
  %64 = load i16, i16* %62, align 2
  %65 = zext i16 %64 to i32
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @writew(i32 %65, i32 %66)
  br label %57

68:                                               ; preds = %57
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @pcc_lock, i64 %69)
  br label %71

71:                                               ; preds = %68, %48, %41
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @pcc_port2addr(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
