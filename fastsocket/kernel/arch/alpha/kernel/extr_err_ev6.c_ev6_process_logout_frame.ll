; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_process_logout_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_process_logout_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el_common = type { i32 }
%struct.el_common_EV6_mcheck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_DISMISS = common dso_local global i32 0, align 4
@err_print_prefix = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [121 x i8] c"%s    EXC_ADDR: 0x%016lx   IER_CM: 0x%016lx   ISUM: 0x%016lx\0A    PAL_BASE: 0x%016lx   I_CTL:  0x%016lx   PCTX: 0x%016lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s    UNKNOWN error, frame follows:\0A\00", align 1
@KERN_NOTICE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ev6_process_logout_frame(%struct.el_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.el_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.el_common_EV6_mcheck*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.el_common* %0, %struct.el_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.el_common*, %struct.el_common** %4, align 8
  %10 = bitcast %struct.el_common* %9 to %struct.el_common_EV6_mcheck*
  store %struct.el_common_EV6_mcheck* %10, %struct.el_common_EV6_mcheck** %6, align 8
  %11 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %13 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ev6_parse_ibox(i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %20 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %23 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %26 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ev6_parse_mbox(i32 %21, i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %33 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %36 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %39 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %42 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %45 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ev6_parse_cbox(i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %2
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %95

55:                                               ; preds = %2
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MCHK_DISPOSITION_DISMISS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %55
  %60 = load i8*, i8** @err_print_prefix, align 8
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** @err_print_prefix, align 8
  %62 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %63 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %66 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %69 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %72 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %75 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.el_common_EV6_mcheck*, %struct.el_common_EV6_mcheck** %6, align 8
  %78 = getelementptr inbounds %struct.el_common_EV6_mcheck, %struct.el_common_EV6_mcheck* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %59
  %85 = load i8*, i8** @err_print_prefix, align 8
  %86 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  br label %89

87:                                               ; preds = %59
  %88 = load i8*, i8** @KERN_NOTICE, align 8
  store i8* %88, i8** @err_print_prefix, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = load %struct.el_common*, %struct.el_common** %4, align 8
  %91 = call i32 @mchk_dump_logout_frame(%struct.el_common* %90)
  %92 = load i8*, i8** %8, align 8
  store i8* %92, i8** @err_print_prefix, align 8
  br label %93

93:                                               ; preds = %89, %55
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %53
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @ev6_parse_ibox(i32, i32) #1

declare dso_local i32 @ev6_parse_mbox(i32, i32, i32, i32) #1

declare dso_local i32 @ev6_parse_cbox(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @mchk_dump_logout_frame(%struct.el_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
