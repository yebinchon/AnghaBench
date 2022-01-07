; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_snooptest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_snooptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i32, i32 }

@nc_ctest4 = common dso_local global i32 0, align 4
@MPEE = common dso_local global i32 0, align 4
@snooptest = common dso_local global i32 0, align 4
@nc_temp = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@SYM_SNOOP_TIMEOUT = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@INTF = common dso_local global i32 0, align 4
@SIP = common dso_local global i32 0, align 4
@DIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CACHE TEST FAILED: timeout.\0A\00", align 1
@nc_dstat = common dso_local global i32 0, align 4
@MDPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"%s: PCI DATA PARITY ERROR DETECTED - DISABLING MASTER DATA PARITY CHECKING.\0A\00", align 1
@BF = common dso_local global i32 0, align 4
@IID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"CACHE TEST FAILED: DMA error (dstat=0x%02x).\00", align 1
@nc_dsp = common dso_local global i32 0, align 4
@nc_scratcha = common dso_local global i32 0, align 4
@snoopend = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"CACHE TEST FAILED: script execution failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"start=%08lx, pc=%08lx, end=%08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"CACHE TEST FAILED: host wrote %d, chip read %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"CACHE TEST FAILED: chip wrote %d, host read %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"CACHE TEST FAILED: chip wrote %d, read back %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*)* @sym_snooptest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_snooptest(%struct.sym_hcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  %13 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %14 = call i32 @sym_regtest(%struct.sym_hcb* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %2, align 4
  br label %178

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %90, %19
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %22 = load i32, i32* @nc_ctest4, align 4
  %23 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %24 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MPEE, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @OUTB(%struct.sym_hcb* %21, i32 %22, i32 %27)
  %29 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %30 = load i32, i32* @snooptest, align 4
  %31 = call i32 @SCRIPTZ_BA(%struct.sym_hcb* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 2, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @cpu_to_scr(i32 %32)
  %34 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %35 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %37 = load i32, i32* @nc_temp, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @OUTL(%struct.sym_hcb* %36, i32 %37, i32 %38)
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %41 = load i32, i32* @nc_dsa, align 4
  %42 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %43 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @OUTL(%struct.sym_hcb* %40, i32 %41, i32 %44)
  %46 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @OUTL_DSP(%struct.sym_hcb* %46, i32 %47)
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %66, %20
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @SYM_SNOOP_TIMEOUT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %55 = load i32, i32* @nc_istat, align 4
  %56 = call i32 @INB(%struct.sym_hcb* %54, i32 %55)
  %57 = load i32, i32* @INTF, align 4
  %58 = load i32, i32* @SIP, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DIP, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %69

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %49

69:                                               ; preds = %64, %49
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @SYM_SNOOP_TIMEOUT, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 32, i32* %2, align 4
  br label %178

75:                                               ; preds = %69
  %76 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %77 = load i32, i32* @nc_dstat, align 4
  %78 = call i32 @INB(%struct.sym_hcb* %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @MDPE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %85 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MPEE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %92 = call i8* @sym_name(%struct.sym_hcb* %91)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @MPEE, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %97 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %20

100:                                              ; preds = %83, %75
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MDPE, align 4
  %103 = load i32, i32* @BF, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @IID, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %101, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  store i32 128, i32* %2, align 4
  br label %178

112:                                              ; preds = %100
  %113 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %114 = load i32, i32* @nc_dsp, align 4
  %115 = call i32 @INL(%struct.sym_hcb* %113, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %117 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @scr_to_cpu(i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %121 = load i32, i32* @nc_scratcha, align 4
  %122 = call i32 @INL(%struct.sym_hcb* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %124 = load i32, i32* @nc_temp, align 4
  %125 = call i32 @INL(%struct.sym_hcb* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %128 = load i32, i32* @snoopend, align 4
  %129 = call i32 @SCRIPTZ_BA(%struct.sym_hcb* %127, i32 %128)
  %130 = add nsw i32 %129, 8
  %131 = icmp ne i32 %126, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %112
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %135 = load i32, i32* @snooptest, align 4
  %136 = call i32 @SCRIPTZ_BA(%struct.sym_hcb* %134, i32 %135)
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %141 = load i32, i32* @snoopend, align 4
  %142 = call i32 @SCRIPTZ_BA(%struct.sym_hcb* %140, i32 %141)
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %137, i64 %139, i64 %144)
  store i32 64, i32* %2, align 4
  br label %178

146:                                              ; preds = %112
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %4, align 4
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load i32, i32* %12, align 4
  %155 = or i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %150, %146
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %164, 2
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %160, %156
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %171, i32 %172)
  %174 = load i32, i32* %12, align 4
  %175 = or i32 %174, 4
  store i32 %175, i32* %12, align 4
  br label %176

176:                                              ; preds = %170, %166
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %132, %109, %73, %17
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @sym_regtest(%struct.sym_hcb*) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @SCRIPTZ_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @cpu_to_scr(i32) #1

declare dso_local i32 @OUTL(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
