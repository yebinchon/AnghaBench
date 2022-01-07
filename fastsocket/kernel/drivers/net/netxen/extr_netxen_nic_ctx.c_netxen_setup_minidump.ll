; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_netxen_setup_minidump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ctx.c_netxen_setup_minidump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32*, i64, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netxen_minidump_template_hdr = type { i32 }

@NX_RCODE_CMD_INVALID = common dso_local global i32 0, align 4
@NX_RCODE_CMD_NOT_IMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Flashed firmware version does not support minidump, minimum version required is [ %u.%u.%u ].\0A \00", align 1
@NX_MD_SUPPORT_MAJOR = common dso_local global i32 0, align 4
@NX_MD_SUPPORT_MINOR = common dso_local global i32 0, align 4
@NX_MD_SUPPORT_SUBVERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Error : Invalid template size ,should be non-zero.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unable to allocate memory for minidump template.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Minidump template checksum Error\0A\00", align 1
@NX_DUMP_MASK_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_setup_minidump(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.netxen_minidump_template_hdr*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %10 = call i32 @netxen_get_minidump_template_size(%struct.netxen_adapter* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NX_RCODE_CMD_INVALID, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NX_RCODE_CMD_NOT_IMPL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %13
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* @NX_MD_SUPPORT_MAJOR, align 4
  %30 = load i32, i32* @NX_MD_SUPPORT_MINOR, align 4
  %31 = load i32, i32* @NX_MD_SUPPORT_SUBVERSION, align 4
  %32 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %157

35:                                               ; preds = %1
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %157

49:                                               ; preds = %35
  %50 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kmalloc(i32 %53, i32 %54)
  %56 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32* %55, i32** %58, align 8
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %49
  %65 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %157

72:                                               ; preds = %49
  %73 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %74 = call i32 @netxen_get_minidump_template(%struct.netxen_adapter* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @NX_RCODE_CMD_NOT_IMPL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %147

86:                                               ; preds = %72
  %87 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %88 = call i64 @netxen_check_template_checksum(%struct.netxen_adapter* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %147

98:                                               ; preds = %86
  %99 = load i32, i32* @NX_DUMP_MASK_DEF, align 4
  %100 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  store i32 %99, i32* %102, align 8
  %103 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %7, align 8
  %107 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %128, %98
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = udiv i64 %118, 4
  %120 = icmp ult i64 %113, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %111
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %7, align 8
  %124 = load i32, i32* %122, align 4
  %125 = call i32 @__le32_to_cpu(i32 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %6, align 8
  store i32 %125, i32* %126, align 4
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %111

131:                                              ; preds = %111
  %132 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = bitcast i32* %135 to %struct.netxen_minidump_template_hdr*
  store %struct.netxen_minidump_template_hdr* %136, %struct.netxen_minidump_template_hdr** %8, align 8
  %137 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 4
  store i32* null, i32** %139, align 8
  %140 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %141 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  store i64 0, i64* %145, align 8
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %157

147:                                              ; preds = %90, %85
  %148 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @kfree(i32* %151)
  %153 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  store i32* null, i32** %155, align 8
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %147, %131, %64, %41, %33
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @netxen_get_minidump_template_size(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @netxen_get_minidump_template(%struct.netxen_adapter*) #1

declare dso_local i64 @netxen_check_template_checksum(%struct.netxen_adapter*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
