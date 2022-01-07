; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_check_fw_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_check_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64 }

@MSGU_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@SCRATCH_PAD_ILA_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c" ila ready status in %d millisec\0A\00", align 1
@SCRATCH_PAD_RAAE_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c" raae ready status in %d millisec\0A\00", align 1
@SCRATCH_PAD_IOP0_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c" iop0 ready status in %d millisec\0A\00", align 1
@chip_8008 = common dso_local global i64 0, align 8
@chip_8009 = common dso_local global i64 0, align 8
@SCRATCH_PAD_IOP1_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"iop1 ready status in %d millisec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @check_fw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fw_ready(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca %struct.pm8001_hba_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 100000, i32* %4, align 4
  store i32 100000, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = call i32 @udelay(i32 1)
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %10 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %11 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %9, i32 0, i32 %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %7, label %21

21:                                               ; preds = %19
  store i32 1000000, i32* %4, align 4
  store i32 1000000, i32* %5, align 4
  br label %22

22:                                               ; preds = %37, %21
  %23 = call i32 @udelay(i32 1)
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %25 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %26 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %24, i32 0, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SCRATCH_PAD_ILA_READY, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @SCRATCH_PAD_ILA_READY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ false, %27 ], [ %36, %33 ]
  br i1 %38, label %22, label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %50

43:                                               ; preds = %39
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %44, i32 %48)
  br label %50

50:                                               ; preds = %43, %42
  store i32 1800000, i32* %4, align 4
  store i32 1800000, i32* %5, align 4
  br label %51

51:                                               ; preds = %66, %50
  %52 = call i32 @udelay(i32 1)
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %54 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %55 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %53, i32 0, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SCRATCH_PAD_RAAE_READY, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @SCRATCH_PAD_RAAE_READY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %62, %56
  %67 = phi i1 [ false, %56 ], [ %65, %62 ]
  br i1 %67, label %51, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %79

72:                                               ; preds = %68
  %73 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %73, i32 %77)
  br label %79

79:                                               ; preds = %72, %71
  store i32 600000, i32* %4, align 4
  store i32 600000, i32* %5, align 4
  br label %80

80:                                               ; preds = %95, %79
  %81 = call i32 @udelay(i32 1)
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %83 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %84 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %82, i32 0, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @SCRATCH_PAD_IOP0_READY, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @SCRATCH_PAD_IOP0_READY, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %91, %85
  %96 = phi i1 [ false, %85 ], [ %94, %91 ]
  br i1 %96, label %80, label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 -1, i32* %6, align 4
  br label %108

101:                                              ; preds = %97
  %102 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %4, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %102, i32 %106)
  br label %108

108:                                              ; preds = %101, %100
  %109 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %110 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @chip_8008, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %150

114:                                              ; preds = %108
  %115 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %116 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @chip_8009, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  store i32 200000, i32* %4, align 4
  store i32 200000, i32* %5, align 4
  br label %121

121:                                              ; preds = %136, %120
  %122 = call i32 @udelay(i32 1)
  %123 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %124 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %125 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %123, i32 0, i32 %124)
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @SCRATCH_PAD_IOP1_READY, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @SCRATCH_PAD_IOP1_READY, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br label %136

136:                                              ; preds = %132, %126
  %137 = phi i1 [ false, %126 ], [ %135, %132 ]
  br i1 %137, label %121, label %138

138:                                              ; preds = %136
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  store i32 -1, i32* %6, align 4
  br label %149

142:                                              ; preds = %138
  %143 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %2, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %4, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %143, i32 %147)
  br label %149

149:                                              ; preds = %142, %141
  br label %150

150:                                              ; preds = %149, %114, %108
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
