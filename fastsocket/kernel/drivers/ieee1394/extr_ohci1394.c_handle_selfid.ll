; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_handle_selfid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_handle_selfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32*, i64, i32 }
%struct.hpsb_host = type { i32 }

@OHCI1394_SelfIDCount = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Error in reception of SelfID packets [0x%08x/0x%08x] (count: %d)\00", align 1
@OHCI1394_MAX_SELF_ID_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Too many errors on SelfID error reception, giving up!\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SelfID packet 0x%x received\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"SelfID for this node is 0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"SelfID is inconsistent [0x%08x/0x%08x]\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"SelfID complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_ohci*, %struct.hpsb_host*, i32, i32)* @handle_selfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_selfid(%struct.ti_ohci* %0, %struct.hpsb_host* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ti_ohci*, align 8
  %6 = alloca %struct.hpsb_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %5, align 8
  store %struct.hpsb_host* %1, %struct.hpsb_host** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %15 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %18 = load i32, i32* @OHCI1394_SelfIDCount, align 4
  %19 = call i32 @reg_read(%struct.ti_ohci* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %21 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %12, align 4
  br label %33

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, -2147483648
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 16711680
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 16711680
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37, %33
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %48 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @PRINT(i32 %44, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %49)
  %51 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %52 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @OHCI1394_MAX_SELF_ID_ERRORS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %58 = call i32 @set_phy_reg_mask(%struct.ti_ohci* %57, i32 1, i32 64)
  %59 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %60 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %66

63:                                               ; preds = %43
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = call i32 (i32, i8*, ...) @PRINT(i32 %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %56
  br label %134

67:                                               ; preds = %37
  %68 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %69 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 8188
  %72 = ashr i32 %71, 2
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %11, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %127, %67
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %132

80:                                               ; preds = %77
  %81 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %82 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  store i32 %93, i32* %13, align 4
  br label %101

94:                                               ; preds = %80
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %94, %85
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = xor i32 %103, -1
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.hpsb_host*, %struct.hpsb_host** %6, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @cpu_to_be32(i32 %110)
  %112 = call i32 @hpsb_selfid_received(%struct.hpsb_host* %109, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, 1056964608
  %115 = ashr i32 %114, 24
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %106
  %119 = load i32, i32* %12, align 4
  %120 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %106
  br label %127

122:                                              ; preds = %101
  %123 = load i32, i32* @KERN_ERR, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 (i32, i8*, ...) @PRINT(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %121
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32* %129, i32** %9, align 8
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %130, 2
  store i64 %131, i64* %11, align 8
  br label %77

132:                                              ; preds = %77
  %133 = call i32 (i8*, ...) @DBGMSG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %66
  ret void
}

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i32 @set_phy_reg_mask(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @DBGMSG(i8*, ...) #1

declare dso_local i32 @hpsb_selfid_received(%struct.hpsb_host*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
