; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte_error.c_shub1_bte_error_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte_error.c_shub1_bte_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodepda_s = type { %struct.TYPE_14__*, %struct.timer_list }
%struct.TYPE_14__ = type { i64, i32 }
%struct.timer_list = type { i32 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i8* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"shub1_bte_error_handler(%p) - %d\0A\00", align 1
@BTE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"eh:%p:%d Nothing to do.\0A\00", align 1
@IIO_ICMR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"eh:%p:%d Marked Giving up\0A\00", align 1
@IIO_NUM_CRBS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"eh:%p:%d Valid %d, Giving up\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"eh:%p:%d Cleaning up\0A\00", align 1
@IIO_IMEM = common dso_local global i32 0, align 4
@IIO_IECLR = common dso_local global i32 0, align 4
@IIO_IBCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shub1_bte_error_handler(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.nodepda_s*, align 8
  %5 = alloca %struct.timer_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca %struct.TYPE_19__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  store i64 %0, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to %struct.nodepda_s*
  store %struct.nodepda_s* %15, %struct.nodepda_s** %4, align 8
  %16 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %17 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %16, i32 0, i32 1
  store %struct.timer_list* %17, %struct.timer_list** %5, align 8
  %18 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %19 = call i32 (...) @smp_processor_id()
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @BTE_PRINTK(i8* %21)
  %23 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %24 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BTE_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %1
  %32 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %33 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BTE_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %42 = call i32 (...) @smp_processor_id()
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @BTE_PRINTK(i8* %44)
  store i32 1, i32* %2, align 4
  br label %185

46:                                               ; preds = %31, %1
  %47 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %48 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cnodeid_to_nasid(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @IIO_ICMR, align 4
  %56 = call i8* @REMOTE_HUB_L(i32 %54, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %46
  %63 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %64 = load i64, i64* @jiffies, align 8
  %65 = load i32, i32* @HZ, align 4
  %66 = mul nsw i32 %65, 5
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = call i32 @mod_timer(%struct.timer_list* %63, i64 %68)
  %70 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %71 = call i32 (...) @smp_processor_id()
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @BTE_PRINTK(i8* %73)
  store i32 1, i32* %2, align 4
  br label %185

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %119, %80
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @IIO_NUM_CRBS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %119

95:                                               ; preds = %88
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @IIO_ICRB_D(i32 %97)
  %99 = call i8* @REMOTE_HUB_L(i32 %96, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %95
  %105 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %106 = load i64, i64* @jiffies, align 8
  %107 = load i32, i32* @HZ, align 4
  %108 = mul nsw i32 %107, 5
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = call i32 @mod_timer(%struct.timer_list* %105, i64 %110)
  %112 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %113 = call i32 (...) @smp_processor_id()
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @BTE_PRINTK(i8* %116)
  store i32 1, i32* %2, align 4
  br label %185

118:                                              ; preds = %95
  br label %119

119:                                              ; preds = %118, %94
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %84

122:                                              ; preds = %84
  br label %123

123:                                              ; preds = %122, %75
  %124 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %125 = call i32 (...) @smp_processor_id()
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @BTE_PRINTK(i8* %127)
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @IIO_IMEM, align 4
  %131 = call i8* @REMOTE_HUB_L(i32 %129, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i8* %131, i8** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @IIO_IMEM, align 4
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @REMOTE_HUB_S(i32 %137, i32 %138, i8* %140)
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i8* null, i8** %142, align 8
  %143 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %144 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @BTE_SUCCESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %123
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %123
  %155 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %156 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %155, i32 0, i32 0
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i64 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @BTE_SUCCESS, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %154
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @IIO_IECLR, align 4
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @REMOTE_HUB_S(i32 %167, i32 %168, i8* %170)
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @IIO_IBCR, align 4
  %174 = call i8* @REMOTE_HUB_L(i32 %172, i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i8* %174, i8** %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @IIO_IBCR, align 4
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @REMOTE_HUB_S(i32 %178, i32 %179, i8* %181)
  %183 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %184 = call i32 @del_timer(%struct.timer_list* %183)
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %166, %104, %62, %40
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @BTE_PRINTK(i8*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cnodeid_to_nasid(i32) #1

declare dso_local i8* @REMOTE_HUB_L(i32, i32) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

declare dso_local i32 @IIO_ICRB_D(i32) #1

declare dso_local i32 @REMOTE_HUB_S(i32, i32, i8*) #1

declare dso_local i32 @del_timer(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
