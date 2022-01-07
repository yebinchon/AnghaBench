; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_mips-mt.c_mips_mt_set_cpuoptions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_mips-mt.c_mips_mt_set_cpuoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mt_opt_norps = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"\22norps\22 option deprectated: use \22rpsctl=\22\0A\00", align 1
@mt_opt_rpsctl = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"34K return prediction stack override set to %d.\0A\00", align 1
@mt_opt_nblsu = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"34K ALU/LSU sync override set to %d.\0A\00", align 1
@mt_opt_forceconfig7 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"CP0.Config7 forced to 0x%08x.\0A\00", align 1
@mt_opt_config7 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Config7: 0x%08x\0A\00", align 1
@mt_protiflush = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"I-cache flushes single-threaded\0A\00", align 1
@mt_protdflush = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"D-cache flushes single-threaded\0A\00", align 1
@mt_n_iflushes = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"I-Cache Flushes Repeated %d times\0A\00", align 1
@mt_n_dflushes = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"D-Cache Flushes Repeated %d times\0A\00", align 1
@itc_base = common dso_local global i32 0, align 4
@Index_Load_Tag_D = common dso_local global i32 0, align 4
@Index_Store_Tag_D = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Mapped %ld ITC cells starting at 0x%08x\0A\00", align 1
@INDEX_0 = common dso_local global i32 0, align 4
@INDEX_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_mt_set_cpuoptions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @read_c0_config7()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i64, i64* @mt_opt_norps, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i64, i64* @mt_opt_rpsctl, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i64, i64* @mt_opt_rpsctl, align 8
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* @mt_opt_rpsctl, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = or i32 %20, 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, -5
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i64, i64* @mt_opt_nblsu, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i64, i64* @mt_opt_nblsu, align 8
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* @mt_opt_nblsu, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = or i32 %35, 32
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, -33
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i64, i64* @mt_opt_forceconfig7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @mt_opt_config7, align 4
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @mt_opt_config7, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @write_c0_config7(i32 %53)
  %55 = call i32 (...) @ehb()
  %56 = call i32 (...) @read_c0_config7()
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i64, i64* @mt_protiflush, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i64, i64* @mt_protdflush, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* @mt_n_iflushes, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @mt_n_iflushes, align 4
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @mt_n_dflushes, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @mt_n_dflushes, align 4
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @itc_base, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %80
  %84 = call i64 (...) @read_c0_ecc()
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = or i64 %85, 67108864
  %87 = call i32 @write_c0_ecc(i64 %86)
  %88 = call i32 (...) @ehb()
  %89 = load i32, i32* @Index_Load_Tag_D, align 4
  %90 = call i32 @cache_op(i32 %89, i32 -2147483640)
  %91 = call i32 (...) @ehb()
  %92 = call i64 (...) @read_c0_dtaglo()
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = and i64 %93, 4294836224
  store i64 %94, i64* %4, align 8
  %95 = load i64, i64* %4, align 8
  %96 = or i64 %95, 3072
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @write_c0_dtaglo(i32 %98)
  %100 = call i32 (...) @ehb()
  %101 = load i32, i32* @Index_Store_Tag_D, align 4
  %102 = call i32 @cache_op(i32 %101, i32 -2147483640)
  %103 = load i32, i32* @itc_base, align 4
  %104 = and i32 %103, -1024
  %105 = or i32 %104, 1
  %106 = call i32 @write_c0_dtaglo(i32 %105)
  %107 = call i32 (...) @ehb()
  %108 = load i32, i32* @Index_Store_Tag_D, align 4
  %109 = call i32 @cache_op(i32 %108, i32 -2147483648)
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @write_c0_ecc(i64 %110)
  %112 = call i32 (...) @ehb()
  %113 = load i64, i64* %4, align 8
  %114 = and i64 %113, 2145386496
  %115 = lshr i64 %114, 20
  %116 = load i32, i32* @itc_base, align 4
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %83, %80
  ret void
}

declare dso_local i32 @read_c0_config7(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @write_c0_config7(i32) #1

declare dso_local i32 @ehb(...) #1

declare dso_local i64 @read_c0_ecc(...) #1

declare dso_local i32 @write_c0_ecc(i64) #1

declare dso_local i32 @cache_op(i32, i32) #1

declare dso_local i64 @read_c0_dtaglo(...) #1

declare dso_local i32 @write_c0_dtaglo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1483}
