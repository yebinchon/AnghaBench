; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_prepare_nego.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_prepare_nego.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { %struct.sym_tcb* }
%struct.sym_tcb = type { %struct.sym_ccb*, %struct.sym_trans, %struct.scsi_target* }
%struct.sym_trans = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.scsi_target = type { i32 }
%struct.sym_ccb = type { i64, i32 }

@PPR_OPT_IU = common dso_local global i32 0, align 4
@PPR_OPT_DT = common dso_local global i32 0, align 4
@PPR_OPT_QAS = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sync msgout\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wide msgout\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ppr msgout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_hcb*, %struct.sym_ccb*, i32*)* @sym_prepare_nego to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_prepare_nego(%struct.sym_hcb* %0, %struct.sym_ccb* %1, i32* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.sym_ccb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  %8 = alloca %struct.scsi_target*, align 8
  %9 = alloca %struct.sym_trans*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %13 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %12, i32 0, i32 0
  %14 = load %struct.sym_tcb*, %struct.sym_tcb** %13, align 8
  %15 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %16 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %14, i64 %17
  store %struct.sym_tcb* %18, %struct.sym_tcb** %7, align 8
  %19 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %20 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %19, i32 0, i32 2
  %21 = load %struct.scsi_target*, %struct.scsi_target** %20, align 8
  store %struct.scsi_target* %21, %struct.scsi_target** %8, align 8
  %22 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %23 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %22, i32 0, i32 1
  store %struct.sym_trans* %23, %struct.sym_trans** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %25 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %26 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %27 = call i32 @sym_check_goals(%struct.sym_hcb* %24, %struct.scsi_target* %25, %struct.sym_trans* %26)
  %28 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %29 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 130
  br i1 %31, label %57, label %32

32:                                               ; preds = %3
  %33 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %34 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %39 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %44 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %49 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %54 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 10
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %47, %42, %37, %3
  store i32 130, i32* %11, align 4
  br label %85

58:                                               ; preds = %52, %32
  %59 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %60 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %65 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  store i32 128, i32* %11, align 4
  br label %84

69:                                               ; preds = %63
  %70 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %71 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %76 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %69
  store i32 129, i32* %11, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %82 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %81, i32 0, i32 7
  store i64 0, i64* %82, align 8
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %80, %79
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %57
  %86 = load i32, i32* %11, align 4
  switch i32 %86, label %158 [
    i32 129, label %87
    i32 128, label %101
    i32 130, label %112
  ]

87:                                               ; preds = %85
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %93 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %96 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @spi_populate_sync_msg(i32* %91, i32 %94, i64 %97)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %158

101:                                              ; preds = %85
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %107 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @spi_populate_width_msg(i32* %105, i64 %108)
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %158

112:                                              ; preds = %85
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %118 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %121 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %124 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %127 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %112
  %131 = load i32, i32* @PPR_OPT_IU, align 4
  br label %133

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %136 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @PPR_OPT_DT, align 4
  br label %142

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i32 [ %140, %139 ], [ 0, %141 ]
  %144 = or i32 %134, %143
  %145 = load %struct.sym_trans*, %struct.sym_trans** %9, align 8
  %146 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @PPR_OPT_QAS, align 4
  br label %152

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  %154 = or i32 %144, %153
  %155 = call i32 @spi_populate_ppr_msg(i32* %116, i32 %119, i64 %122, i64 %125, i32 %154)
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %85, %152, %101, %87
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %161 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %158
  %165 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %166 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %167 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %166, i32 0, i32 0
  store %struct.sym_ccb* %165, %struct.sym_ccb** %167, align 8
  %168 = load i32, i32* @DEBUG_FLAGS, align 4
  %169 = load i32, i32* @DEBUG_NEGO, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %164
  %173 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %174 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %175 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = icmp eq i32 %177, 129
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %185

180:                                              ; preds = %172
  %181 = load i32, i32* %11, align 4
  %182 = icmp eq i32 %181, 128
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  br label %185

185:                                              ; preds = %180, %179
  %186 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %179 ], [ %184, %180 ]
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @sym_print_nego_msg(%struct.sym_hcb* %173, i64 %176, i8* %186, i32* %187)
  br label %189

189:                                              ; preds = %185, %164
  br label %190

190:                                              ; preds = %189, %158
  %191 = load i32, i32* %10, align 4
  ret i32 %191
}

declare dso_local i32 @sym_check_goals(%struct.sym_hcb*, %struct.scsi_target*, %struct.sym_trans*) #1

declare dso_local i32 @spi_populate_sync_msg(i32*, i32, i64) #1

declare dso_local i32 @spi_populate_width_msg(i32*, i64) #1

declare dso_local i32 @spi_populate_ppr_msg(i32*, i32, i64, i64, i32) #1

declare dso_local i32 @sym_print_nego_msg(%struct.sym_hcb*, i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
