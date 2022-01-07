; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_build_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-topology.c_build_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_node = type { i32, i64, %struct.TYPE_2__, %struct.fw_node** }
%struct.TYPE_2__ = type { %struct.list_head* }
%struct.list_head = type { %struct.list_head* }
%struct.fw_card = type { i64, i32, i32, i32, %struct.fw_node*, %struct.fw_node* }

@.str = private unnamed_addr constant [33 x i8] c"Inconsistent extended self IDs.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"PHY ID mismatch in self ID: %d != %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Topology stack underflow\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Out of memory while building topology.\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Parent port inconsistency for node %d: parent_count=%d\0A\00", align 1
@SCODE_BETA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_node* (%struct.fw_card*, i32*, i32)* @build_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_node* @build_tree(%struct.fw_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_node*, align 8
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_node*, align 8
  %9 = alloca %struct.fw_node*, align 8
  %10 = alloca %struct.fw_node*, align 8
  %11 = alloca %struct.fw_node*, align 8
  %12 = alloca %struct.list_head, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fw_node* null, %struct.fw_node** %10, align 8
  store %struct.fw_node* null, %struct.fw_node** %8, align 8
  %25 = call i32 @INIT_LIST_HEAD(%struct.list_head* %12)
  store i32 0, i32* %22, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %15, align 8
  store i32 0, i32* %20, align 4
  store %struct.fw_node* null, %struct.fw_node** %11, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SELF_ID_GAP_COUNT(i32 %31)
  store i32 %32, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %33

33:                                               ; preds = %196, %3
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %202

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @count_ports(i32* %38, i32* %18, i32* %19)
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %216

44:                                               ; preds = %37
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @SELF_ID_PHY_ID(i32 %48)
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @SELF_ID_PHY_ID(i32 %53)
  %55 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54)
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %216

56:                                               ; preds = %44
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %216

62:                                               ; preds = %56
  store i32 0, i32* %17, align 4
  store %struct.list_head* %12, %struct.list_head** %13, align 8
  br label %63

63:                                               ; preds = %71, %62
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.list_head*, %struct.list_head** %13, align 8
  %69 = getelementptr inbounds %struct.list_head, %struct.list_head* %68, i32 0, i32 0
  %70 = load %struct.list_head*, %struct.list_head** %69, align 8
  store %struct.list_head* %70, %struct.list_head** %13, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %63

74:                                               ; preds = %63
  %75 = load %struct.list_head*, %struct.list_head** %13, align 8
  %76 = call %struct.fw_node* @fw_node(%struct.list_head* %75)
  store %struct.fw_node* %76, %struct.fw_node** %9, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %80 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.fw_node* @fw_node_create(i32 %77, i32 %78, i64 %81)
  store %struct.fw_node* %82, %struct.fw_node** %8, align 8
  %83 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %84 = icmp eq %struct.fw_node* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %216

87:                                               ; preds = %74
  %88 = load i32, i32* %20, align 4
  %89 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %90 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 63
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  store %struct.fw_node* %95, %struct.fw_node** %10, align 8
  br label %96

96:                                               ; preds = %94, %87
  %97 = load i32, i32* %16, align 4
  %98 = call i64 @SELF_ID_CONTENDER(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  store %struct.fw_node* %101, %struct.fw_node** %11, align 8
  br label %102

102:                                              ; preds = %100, %96
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %103

103:                                              ; preds = %146, %102
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %149

107:                                              ; preds = %103
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @get_port_type(i32* %108, i32 %109)
  switch i32 %110, label %145 [
    i32 128, label %111
    i32 129, label %117
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %116 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %145

117:                                              ; preds = %107
  %118 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %119 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %120 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %119, i32 0, i32 3
  %121 = load %struct.fw_node**, %struct.fw_node*** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %121, i64 %123
  store %struct.fw_node* %118, %struct.fw_node** %124, align 8
  %125 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %126 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %127 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %126, i32 0, i32 3
  %128 = load %struct.fw_node**, %struct.fw_node*** %127, align 8
  %129 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %130 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.fw_node*, %struct.fw_node** %128, i64 %132
  store %struct.fw_node* %125, %struct.fw_node** %133, align 8
  %134 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %135 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %139 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.fw_node*, %struct.fw_node** %9, align 8
  %141 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load %struct.list_head*, %struct.list_head** %142, align 8
  %144 = call %struct.fw_node* @fw_node(%struct.list_head* %143)
  store %struct.fw_node* %144, %struct.fw_node** %9, align 8
  br label %145

145:                                              ; preds = %107, %117, %111
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %103

149:                                              ; preds = %103
  %150 = load i32*, i32** %14, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = icmp eq i32* %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* %21, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %153, %149
  %157 = load i32*, i32** %14, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = icmp ult i32* %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i32, i32* %21, align 4
  %162 = icmp ne i32 %161, 1
  br i1 %162, label %163, label %167

163:                                              ; preds = %160, %153
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* %21, align 4
  %166 = call i32 (i8*, ...) @fw_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %164, i32 %165)
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %216

167:                                              ; preds = %160, %156
  %168 = load %struct.list_head*, %struct.list_head** %13, align 8
  %169 = getelementptr inbounds %struct.list_head, %struct.list_head* %168, i32 0, i32 0
  %170 = load %struct.list_head*, %struct.list_head** %169, align 8
  %171 = call i32 @__list_del(%struct.list_head* %170, %struct.list_head* %12)
  %172 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %173 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %172, i32 0, i32 2
  %174 = call i32 @list_add_tail(%struct.TYPE_2__* %173, %struct.list_head* %12)
  %175 = load i32, i32* %19, align 4
  %176 = sub nsw i32 1, %175
  %177 = load i32, i32* %22, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %22, align 4
  %179 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %180 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SCODE_BETA, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %167
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %185, %186
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 1, i32* %24, align 4
  br label %190

190:                                              ; preds = %189, %184, %167
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @SELF_ID_GAP_COUNT(i32 %191)
  %193 = load i32, i32* %23, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store i32 0, i32* %23, align 4
  br label %196

196:                                              ; preds = %195, %190
  %197 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %198 = call i32 @update_hop_count(%struct.fw_node* %197)
  %199 = load i32*, i32** %14, align 8
  store i32* %199, i32** %6, align 8
  %200 = load i32, i32* %20, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %20, align 4
  br label %33

202:                                              ; preds = %33
  %203 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %204 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %205 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %204, i32 0, i32 5
  store %struct.fw_node* %203, %struct.fw_node** %205, align 8
  %206 = load %struct.fw_node*, %struct.fw_node** %11, align 8
  %207 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %208 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %207, i32 0, i32 4
  store %struct.fw_node* %206, %struct.fw_node** %208, align 8
  %209 = load i32, i32* %23, align 4
  %210 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %211 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* %24, align 4
  %213 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %214 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 8
  %215 = load %struct.fw_node*, %struct.fw_node** %10, align 8
  store %struct.fw_node* %215, %struct.fw_node** %4, align 8
  br label %216

216:                                              ; preds = %202, %163, %85, %60, %51, %42
  %217 = load %struct.fw_node*, %struct.fw_node** %4, align 8
  ret %struct.fw_node* %217
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @SELF_ID_GAP_COUNT(i32) #1

declare dso_local i32* @count_ports(i32*, i32*, i32*) #1

declare dso_local i32 @fw_error(i8*, ...) #1

declare dso_local i32 @SELF_ID_PHY_ID(i32) #1

declare dso_local %struct.fw_node* @fw_node(%struct.list_head*) #1

declare dso_local %struct.fw_node* @fw_node_create(i32, i32, i64) #1

declare dso_local i64 @SELF_ID_CONTENDER(i32) #1

declare dso_local i32 @get_port_type(i32*, i32) #1

declare dso_local i32 @__list_del(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_2__*, %struct.list_head*) #1

declare dso_local i32 @update_hop_count(%struct.fw_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
