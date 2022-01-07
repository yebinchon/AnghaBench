; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcixcc.c_zcrypt_pcixcc_mcl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_zcrypt_pcixcc.c_zcrypt_pcixcc_mcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32 }
%struct.CPRBX = type { i32, i32 }

@zcrypt_pcixcc_mcl.msg = internal global [540 x i8] c"\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\00\00\00\00\00CA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00PK\00\00\00\00\01\C4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07$\00\00\00\00\00\00\00\00\00\00\00\00\00\DC\02\00\00\00T2\00\00\00\00\00\00\00\E8\00\00\00\00\00\00\07$\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00PK\00\0AMRP     \00B\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\00\11\223DUfw\88\99\AA\BB\CC\DD\EE\FF\FF\EE\DD\CC\BB\AA\99\88wfUD3\22\11\00\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10\00\9A\00\98\00\00\1E\00\00\94\00\00\00\00\04\00\00\8C\00\00\00@\02\00\00@\BA\E8#<u\F3\91a\D6s9\CF{m\8Ea\97c\9E\D9`U\D6\C7\EF\F8\1Ec\95\17\CC(E`\11\C5\C4Nf\C6\E6\C3\DE\8A\190\CF\0E\D7\AA\DB\01\D8\00\BB\8F9\9Fd(\F5zwI\CCk\A3\91\97p\E7`\1E9\E1\E53\E1\15ci\08\80Lg\C4A\8FH\DF&\98\F1\D5\8D\88\D9j\A4\96\C5\84\D90Ig}\19\B1\B3EM\B2S\9AG<|U\BF\CC\85\006\F1=\93S", align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ZCRYPT_PCIXCC_MCL2 = common dso_local global i32 0, align 4
@ZCRYPT_PCIXCC_MCL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_pcixcc_mcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_pcixcc_mcl(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.CPRBX*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i64 @get_zeroed_page(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %19 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ap_send(i32 %20, i32 84281096, i8* getelementptr inbounds ([540 x i8], [540 x i8]* @zcrypt_pcixcc_mcl.msg, i64 0, i64 0), i32 540)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %70

25:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = call i32 @mdelay(i32 300)
  %31 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %32 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @ap_recv(i32 %33, i64* %4, i8* %34, i32 4096)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %39, 72623859790382856
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %46

42:                                               ; preds = %38, %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %26

46:                                               ; preds = %41, %26
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %47, 6
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %70

52:                                               ; preds = %46
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 48
  %55 = bitcast i8* %54 to %struct.CPRBX*
  store %struct.CPRBX* %55, %struct.CPRBX** %5, align 8
  %56 = load %struct.CPRBX*, %struct.CPRBX** %5, align 8
  %57 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.CPRBX*, %struct.CPRBX** %5, align 8
  %62 = getelementptr inbounds %struct.CPRBX, %struct.CPRBX* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 33
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @ZCRYPT_PCIXCC_MCL2, align 4
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %60, %52
  %68 = load i32, i32* @ZCRYPT_PCIXCC_MCL3, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %49, %24
  %71 = load i8*, i8** %6, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = call i32 @free_page(i64 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ap_send(i32, i32, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ap_recv(i32, i64*, i8*, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
